module Admin
  # Admin interface for managing categories
  class CategoryController < ApplicationController
    layout 'admin'

    def index
      @categories = Category.paginate(page: params[:page], per_page: 10)
                            .order('name')
    end

    def show
      @category = Category.find(params[:id])
    end

    def update
      @category = Category.find params[:id]

      respond_to do |format|
        @category.update_attributes(permitted_params)
        format.json { respond_with_bip(@category) }
      end
    end

    private

    def permitted_params
      params.require(:category).permit(:name, :deleted)
    end
  end
end
