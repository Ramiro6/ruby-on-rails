Rails.application.routes.draw do
  get '/projects/:id/index', to: 'projects#index'
  get '/projects/new', to:'projects#new'
  post '/projects/', to:'projects#create', as: :users
end
