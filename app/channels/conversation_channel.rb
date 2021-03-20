class ConversationChannel < ApplicationCable::Channel
  def subscribed
    channel = room(current_user) 
    stream_from channel
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed 
    stop_all_streams 
  end

  def speak(data) 
    # str = room(current_user)   
    message_params = data['message'].each_with_object({}) do |el,hash| 
      hash[el.values.first] = el.values.last 
    end 

    #ActionCable.server.broadcast(
    #  str,
    #  message: message_params
    #) 
    Message.create(message_params)    
  end

  private 

  def room(user) 
    "conversation-#{user.id}-channel" 
  end 
end
