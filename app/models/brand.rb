# app/models/brand.rb
# model for Brands.
class Brand < ActiveRecord::Base
  self.primary_key = 'id'
  has_many :products
end
