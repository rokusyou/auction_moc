Rails.application.routes.draw do
  get 'items/new'
  root 'top#index'
end
