Rails.application.routes.draw do
  root 'users#welcome'
  resources :rides
  resources :users
  resources :attractions
  get '/user/:id' => 'users#show'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

end
