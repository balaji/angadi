# product_controller.rb
# describes product in detail
class ProductController < ApplicationController
  def show
    render locals: { product: Product.find(params[:id]) }
  end

  def search
    products = Product.search(params[:term])
    render locals: {
      products: products,
      categories: products.collect(&:category).uniq
    }
  end
end
