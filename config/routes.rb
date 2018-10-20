Rails.application.routes.draw do
  root 'users#welcome'

  resources :users
  resources :attractions
  get '/user/:id' => 'users#show'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  post '/rides' => 'rides#create'
end
