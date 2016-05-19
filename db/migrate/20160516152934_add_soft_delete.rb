# :nodoc:
class AddSoftDelete < ActiveRecord::Migration
  def change
    add_column :categories, :deleted, :boolean, default: false
    add_column :brands, :deleted, :boolean, default: false
    add_column :products, :deleted, :boolean, default: false
  end
end
