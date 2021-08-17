Rails.application.routes.draw do
  
  # root "home#index"
  devise_for :users
  resources :posts
  resources :companies
  
  get 'home/index'
  root :to => 'home#index'

end
