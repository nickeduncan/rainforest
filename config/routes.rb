Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'

  root 'products#index'

  get '/register' => 'users#new'
  resources :users
  resources :reviews
  resources :products

  # These routes will be for showing a login form, logging in, and logging out
get '/login' => 'sessions#new'
post '/login' => 'sessions#create'
get '/logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
