Rails.application.routes.draw do
  get 'chats/user'
  post 'chats/createuser' => 'chats#createuser'
  get 'chats/index/:id' => 'chats#index'

  post '/chat' => 'chats#create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
