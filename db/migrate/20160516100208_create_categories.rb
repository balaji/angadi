# :nodoc:
class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories, id: :uuid do |t|
      t.string :name, null: false
      t.uuid :parent_id
      t.timestamps null: false
    end

    add_index :categories, :parent_id
    add_foreign_key :categories, :categories, column: :parent_id
  end
end
