Rails.application.routes.draw do
  root to: "messages#index"
  get 'messages/index'
  resources :rooms , only: [:index]
end
