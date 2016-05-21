Rails.application.routes.draw do
  root 'home#index'
  resources 'admin'
  resources 'category', only: :show
  resources 'product', only: :show
  resources 'search', only: :create
end
