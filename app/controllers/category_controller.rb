# Products by Sub-Category
class CategoryController < ApplicationController
  def show
    category = Category.find(params[:id])
    render locals: {
        category: category,
        products: category.all_children.collect(&:products).flatten
    }
  end
end
