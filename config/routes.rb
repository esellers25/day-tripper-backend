Rails.application.routes.draw do
  resources :items
  post '/login', to: "users#login", as: 'login'
  get '/keep_logged_in', to: "users#keep_logged_in"
  
  resources :trail_lists
  resources :lists
  resources :photos, only: [:index, :show, :create]
  resources :reviews

  resources :users, only: [:index, :show, :create, :update, :destroy]
  resources :trails

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
