import consumer from "./consumer"

consumer.subscriptions.create("PresenceChannel", {
  connected() {
    // Called when the subscription is ready for use on the server
  },

  disconnected() {
    // Called when the subscription has been terminated by the server
  },

  received(data) {
    // Called when there's incoming data on the websocket for this channel 
    //console.log(data['type']);
    if(data['type'] == 'CO_USER') {
      $('.offline.' + data['user']).removeClass("offline").addClass("online"); 
    } 
    else if(data['type'] == 'DC_USER') { 
      $('.online.' + data['user']).removeClass("online").addClass("offline");
    } 
  }
});
