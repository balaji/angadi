# :nodoc:
class AddPriceConstraint < ActiveRecord::Migration
  def change
    change_column :products, :base_price, :money, null: false
  end
end
