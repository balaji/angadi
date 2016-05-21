# Products by Sub-Category
class CategoryController < ApplicationController
  def show
    render locals: { category: Category.find(params[:id]) }
  end
end
