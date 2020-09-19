Rails.application.routes.draw do
  get 'auctions/index'
  resources :items
  root to: 'items#index'
  post 'items/bid'
end
