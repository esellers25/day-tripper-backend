Rails.application.routes.draw do
  post '/login', to: "users#login", as: 'login'
  get '/keep_logged_in', to: "users#keep_logged_in"
  get '/lists', to: "users#lists", as: 'lists'
  resources :trail_lists
  resources :lists
  resources :photos, only: [:index, :show, :create]
  resources :reviews

  resources :users, only: [:index, :show, :create, :update, :destroy]
  resources :trails

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
