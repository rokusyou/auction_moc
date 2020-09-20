Rails.application.routes.draw do
  get 'sessions/new'
  get 'auctions/index'
  resources :items
  root to: 'auctions#index'
  post 'items/bid'
  post 'auctions/bid'
end
