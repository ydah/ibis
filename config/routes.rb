Rails.application.routes.draw do
  root to: 'home#index'
  resources :articles, only: [:index]
  namespace :api do
    resources :articles, only: [:show]
  end
  get 'home/authentication'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
