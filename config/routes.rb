Rails.application.routes.draw do
  root 'application#welcome'
  get '/login' => 'sessions#new', as: 'login'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy', as: 'logout'

  get '/secret' => 'secrets#show', as: 'secret'
end
