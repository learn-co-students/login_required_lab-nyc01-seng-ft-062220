Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'application#homepage', as: 'homepage'
  
  get '/login', to: 'sessions#new', as: 'new_session'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'
  
  get '/secrets/new', to: 'sessions#secret', as: 'new_secret'
  get '/secrets', to: 'secrets#show', as: 'secrets'
end
