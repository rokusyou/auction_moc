Rails.application.routes.draw do
  resources :items
  root 'top#index'
end
