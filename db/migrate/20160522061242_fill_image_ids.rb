require 'securerandom'
# :nodoc:
class FillImageIds < ActiveRecord::Migration
  def change
    add_index :products, :image_id, unique: true

    Product.find_each do |product|
      product.image_id = SecureRandom.hex(6)
      product.save
    end
  end
end
