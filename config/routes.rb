Rails.application.routes.draw do
  get '/login', to: 'sessions#new'
  get 'sessions/new'
  get 'auctions/index'
  resources :items
  root to: 'auctions#index'
  post 'items/bid'
  post 'auctions/bid'
end
