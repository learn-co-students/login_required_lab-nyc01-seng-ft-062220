Rails.application.routes.draw do
  root 'application#hello'
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  get '/show' => 'secrets#show'
  get '/home' => 'sessions#home'
end
