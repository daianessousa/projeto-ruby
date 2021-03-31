Rails.application.routes.draw do
  resources :products, only: [:index, :new, :create]
  resources :restaurants
  devise_for :users
  root 'home#index'
end
