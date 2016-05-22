module Admin
  # Admin interface to manage brands
  class BrandController < ApplicationController
    layout 'admin'

    def index
      @brands = Brand.paginate(page: params[:page], per_page: 10).order('name')
    end

    def show
      @brand = Brand.find(params[:id])
    end

    def update
      @brand = Brand.find params[:id]

      respond_to do |format|
        @brand.update_attributes(permitted_params)
        format.json { respond_with_bip(@brand) }
      end
    end

    private

    def permitted_params
      params.require(:brand).permit(:name, :deleted)
    end
  end
end
