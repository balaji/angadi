# product_controller.rb
# describes product in detail
class ProductController < ApplicationController
  def show
    render locals: { product: Product.find(params[:id]) }
  end
end
