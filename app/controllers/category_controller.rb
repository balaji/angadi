# Products by Sub-Category
class CategoryController < ApplicationController
  def show
    render locals: { product: Category.find(params[:id]) }
  end
end
