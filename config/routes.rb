Rails.application.routes.draw do
  resources :chats
  resources :items
  root to: 'rooms#index'
  post 'items/bid'
end
