# app/models/brand.rb
# model for Brands.
class Brand < ActiveRecord::Base
  self.primary_key = 'id'
  has_many :products
  validates :name, uniqueness: true

  class << self
    def for_collection
      Brand.where(deleted: false)
           .sort_by(&:name).map { |brand| [brand.id, brand.name] }
    end
  end
end
