Rails.application.routes.draw do
  devise_for :users
  root to: "messages#index"
  get 'messages/index'
  resources :users, only: [:edit, :update]
  resources :rooms , only: [:index]
  resources :chats, only: [:new, :create]
end
