# app/models/category.rb
# model for Categories.
class Category < ActiveRecord::Base
  self.primary_key = 'id'
  has_one :parent, class_name: 'Category', foreign_key: :parent_id
  has_many :brands
  has_many :products

  def all_children
    Category.find_by_sql(%(WITH RECURSIVE all_categories AS (
           SELECT  id, name, parent_id FROM categories
             WHERE id = '#{id}'
           UNION
           SELECT cat.id, cat.name, cat.parent_id FROM categories cat
             JOIN all_categories a
               ON (a.id = cat.parent_id)
          )
          SELECT * FROM all_categories;))
  end

  def all_brands
    all_children.collect(&:products).flatten.collect(&:brand).uniq
  end
end
