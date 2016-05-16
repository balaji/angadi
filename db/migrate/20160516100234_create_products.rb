# :nodoc:
class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products, id: :uuid do |t|
      t.string :name, null: false
      t.text :description
      t.uuid :category_id, null: false
      t.uuid :brand_id, null: false
      t.timestamps null: false
    end

    add_foreign_key :products, :categories
    add_foreign_key :products, :brands
  end
end
