Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'zombies#index', as: 'people'
  post '/', to: 'zombies#create'
end
