Rails.application.routes.draw do
  root 'home#index'
  resources 'admin'
  get 'product/search', to: 'product#search', as: 'product_search'
  resources 'category', only: :show
  resources 'product', only: :show
end
