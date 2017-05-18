Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'zombie#index'
  post '/', to: 'zombie#new', as: 'users'
  delete '/', to: 'zombie#destroy'
end
