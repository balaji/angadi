# app/models/category.rb
# model for Categories.
class Category < ActiveRecord::Base
  self.primary_key = 'id'
  has_one :parent, class_name: 'Category', foreign_key: :parent_id
  has_many :products
  validates :name, uniqueness: true

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

  def children
    children = []
    Category.where(parent_id: id).find_each do |sub_category|
      unless sub_category.all_children.collect(&:products).flatten.empty?
        children << sub_category
      end
    end
    children
  end

  def all_brands
    all_children.collect(&:products).flatten.collect(&:brand).uniq
  end

  def crumbs
    results = crumbs_query(id)
    path_string = results.first['path']
    path_string.split('|')
  end

  private

  def crumbs_query(id)
    ActiveRecord::Base.connection.execute(%(WITH RECURSIVE all_categories AS (
       SELECT  parent_id, 1::INT AS depth, name::TEXT as path FROM categories
         WHERE id = '#{id}'
       UNION
       SELECT at.parent_id, a.depth + 1,
        (at.name || '$' || at.id || '|' || a.path) as path
         FROM categories at
         JOIN all_categories a
           ON (at.id = a.parent_id))
      SELECT * FROM all_categories order by depth desc limit 1;))
  end
end
