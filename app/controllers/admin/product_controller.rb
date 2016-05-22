module Admin
  # Admin interface for managing products
  class ProductController < ApplicationController
    layout 'admin'

    def index
      @products = Product.paginate(page: params[:page], per_page: 10)
                         .order('name')
    end

    def show
      @product = Product.find(params[:id])
    end

    def update
      @product = Product.find params[:id]

      respond_to do |format|
        @product.update_attributes(permitted_params)
        format.json { respond_with_bip(@product) }
      end
    end

    private

    def permitted_params
      params.require(:product).permit(:name, :deleted)
    end
  end
end
