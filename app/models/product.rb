# app/models/product.rb
# model for Products.
class Product < ActiveRecord::Base
  self.primary_key = 'id'
  belongs_to :category
  belongs_to :brand
end
