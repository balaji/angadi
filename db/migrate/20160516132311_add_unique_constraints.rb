# :nodoc:
class AddUniqueConstraints < ActiveRecord::Migration
  def change
    add_index :categories, :name, unique: true
    add_index :brands, :name, unique: true
    add_index :products, :name, unique: true
  end
end
