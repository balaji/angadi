# app/models/product.rb
# model for Products.
class Product < ActiveRecord::Base
  self.primary_key = 'id'
  belongs_to :category
  belongs_to :brand

  class << self
    def search(term)
      results = search_query("#{term.split.join(':* & ')}:*")
      ids = []
      results.each { |res| ids << res['id'] }
      Product.find(ids.uniq)
    end

    private

    def search_query(term)
      ActiveRecord::Base.connection.execute(%(select id
        from (select products.id as id,
              to_tsvector(categories.name) ||
              to_tsvector(products.name) ||
              to_tsvector(brands.name) as document
                from products
                join categories on categories.id = products.category_id
                join brands on brands.id = products.brand_id) search
              where search.document @@ to_tsquery('#{term}')
              order by ts_rank(search.document, to_tsquery('#{term}')) desc;))
    end
  end
end
