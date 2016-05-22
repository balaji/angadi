Rails.application.routes.draw do
  root 'home#index'
  resources 'admin', only: [] do
    collection do
      resources 'category', controller: 'admin/category'
      resources 'product', controller: 'admin/product'
      resources 'brand', controller: 'admin/brand'
      resources 'campaign', controller: 'admin/campaign'
    end
  end
  get 'product/search', to: 'product#search', as: 'product_search'
  get 'admin', to: 'admin/category#index'
  resources 'category', only: :show
  resources 'product', only: :show
end
