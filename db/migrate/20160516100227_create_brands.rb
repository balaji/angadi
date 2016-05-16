# :nodoc:
class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands, id: :uuid do |t|
      t.string :name, null: false
      t.uuid :category_id, null: false
      t.timestamps null: false
    end

    add_foreign_key :brands, :categories
  end
end
