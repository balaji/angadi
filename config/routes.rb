Rails.application.routes.draw do
  root 'home#index'
  resources 'admin'
  resources 'category', only: :show
end
