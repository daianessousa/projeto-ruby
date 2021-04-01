Rails.application.routes.draw do
  get 'orders/create'
  resources :orders, only: [:create]
  resources :products, only: [:index, :new, :create]
  resources :restaurants
  devise_for :users
  root 'home#index'
end
