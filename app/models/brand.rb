# app/models/brand.rb
# model for Brands.
class Brand < ActiveRecord::Base
  self.primary_key = 'id'
  belongs_to :category
end
