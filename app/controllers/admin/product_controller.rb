module Admin
  # Admin interface for managing products
  class ProductController < ApplicationController
    require 'RMagick'
    layout 'admin'

    def index
      @products = Product.paginate(page: params[:page], per_page: 10)
                         .order('name')
    end

    def show
      @product = Product.find(params[:id])
    end
    # rubocop:disable Metrics/AbcSize

    def update
      @product = Product.find params[:id]

      if params[:product][:picture].present?
        save_image(params[:product][:picture].tempfile.path, @product)
        return render :show
      end
      respond_to do |format|
        @product.update_attributes(permitted_params)
        format.json { respond_with_bip(@product) }
      end
    end
    # rubocop:enable Metrics/AbcSize

    private

    def save_image(image_file, product)
      resize_image(image_file, 300, "#{product.image_id}_300.jpg")
      resize_image(image_file, 450, "#{product.image_id}_450.jpg")
    end

    def resize_image(file, size, file_name)
      img = Magick::Image.read(file).first
      re_sized = img.resize_to_fit(size)
      path = Rails.root.join('public', 'images', file_name)
      re_sized.write(path) do
        self.quality = 100
      end

      # free up RAM
      img.destroy!
      re_sized.destroy!
    end

    def permitted_params
      params.require(:product).permit(:name, :description,
                                      :deleted, :category_id,
                                      :brand_id, :base_price)
    end
  end
end
