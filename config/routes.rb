Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'sessions#homepage', as 'homepage'
  get '/login', to: 'sessions#login', as: 'login'
  post '/login', to: 'sessions#login'
  get '/secret', to 'sessions#secret', as 'secret'
end
