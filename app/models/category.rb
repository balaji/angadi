# app/models/category.rb
# model for Categories.
class Category < ActiveRecord::Base
  self.primary_key = 'id'
  has_one :parent, class_name: 'Category', foreign_key: :parent_id
  has_many :brands
  has_many :products
end
