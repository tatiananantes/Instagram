Rails.application.routes.draw do
  
  root 'sessions#login'
  #users routes 
  resources :users
# posts routes
  resources :posts
# sessions routes
  get '/login', to: 'sessions#login'
  post '/login', to: 'sessions#create'
  post '/logout', to: 'sessions#delete'
  delete '/logout', to: 'sessions#delete'
  get '/logout', to: 'sessions#delete'


  # get '/login', to: 'sessions#login'
  # post '/login', to: 'sessions#create'
  # post '/logout', to: 'sessions#destroy'
  # get '/logout', to: 'sessions#destroy'
end
