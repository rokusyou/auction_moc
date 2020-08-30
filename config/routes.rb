Rails.application.routes.draw do
  resources :items
  root to: 'items#index'
  post 'items/bid'
end
