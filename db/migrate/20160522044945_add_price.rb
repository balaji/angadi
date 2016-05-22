# :nodoc:
class AddPrice < ActiveRecord::Migration
  def change
    add_column :products, :base_price, :money
  end
end
