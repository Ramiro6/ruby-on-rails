Rails.application.routes.draw do

  get '/user/:name', to: 'users#index'
end
