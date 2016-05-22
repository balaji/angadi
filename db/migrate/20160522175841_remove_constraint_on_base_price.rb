# :nodoc:
class RemoveConstraintOnBasePrice < ActiveRecord::Migration
  def change
    change_column :products, :base_price, :money, null: true
  end
end
