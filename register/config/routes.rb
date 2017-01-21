Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/users/new', to: 'user#new'
  get '/user/:id', to: 'user#find'
  post '/users', to: 'user#create'

  get '/users/login', to: 'user#login'

end
