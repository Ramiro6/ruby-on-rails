Rails.application.routes.draw do
  root 'users#home'

  get '/index', to: 'users#index'
  get '/new', to: 'users#new'
  post '/new', to: 'users#create', as: :users

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
end
