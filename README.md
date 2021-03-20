# Chat App Rails
## Description
This is a basic facebook-like chat app built on Ruby On Rails, which makes the use of WebSockets (in the form of Rails ActionCable) 
to enable real time chatting. 
## Deployment 
To deploy this app, follow the below steps: 
* First of all, [clone this repository](https://docs.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository). 
* Next, if you don't have bundler installed,(check this by running 
    ```bundler --version```, 
  install [Ruby Version Manager](https://help.dreamhost.com/hc/en-us/articles/217185247-Ruby-Version-Manager-RVM-)(RVM). Also go through [this 
  tutorial](https://help.dreamhost.com/hc/en-us/articles/217185437-How-to-enable-RVM) to enable RVM. Then run 
  ``` 
  gem install bundler
  ```
* Next run the following two commands so that all dependencies are installed: 
  ``` 
  bundle install 
  yarn install 
  ``` 
  Be sure to look out for any errors that may pop up. 
* Now all your dependencies are installed, just run the Rails server using the command 
  ```
  rails s
  ``` 
* Now open a browser of your choice and go to https://localhost:3000, and voila, you can see the chat app. You might have to sign in, and add some users, but then that will be all. 
> Nice right? If you want to learn more about WebSockets and how ActionCable implements it, [read this](https://guides.rubyonrails.org/action_cable_overview.html#what-is-action-cable-questionmark) 
