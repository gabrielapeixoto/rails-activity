Rails.application.routes.draw do
  
  devise_for :users
  # root "home#index"
  resources :posts
  resources :companies
  get 'home/index'
  root :to => 'home#index'

end
