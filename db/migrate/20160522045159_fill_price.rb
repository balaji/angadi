# :nodoc:
class FillPrice < ActiveRecord::Migration
  def change
    random = Random.new
    Product.find_each do |product|
      product.base_price = random.rand(10.00..1000.00).round(2)
      product.save
    end
  end
end
