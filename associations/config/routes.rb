Rails.application.routes.draw do
  get '/projects/:id', to: 'projects#show'

  get '/projects/:user_id/index', to: 'projects#index'
  get '/projects/:user_id/new', to: 'projects#new'
  post '/projects/:user_id', to: 'projects#create', as: :user_descriptions

  get '/projects/:user_id/edit/:id/', to: 'projects#edit'
  patch '/projects/:user_id/edit/:id', to: 'projects#update', as: :user_description
  delete '/projects/:user_id/edit/:id', to: 'projects#destroy'
end
