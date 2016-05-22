Angadi [![Travis Build](https://travis-ci.org/balaji/angadi.svg?branch=master)](https://travis-ci.org/balaji/angadi.svg?branch=master)
================
Angadi (Tamil: அங்காடி. Meaning: Market, Shop) is a Ruby on Rails webapp to demo a custom built eCommerce site.

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

This application was generated with the [rails_apps_composer](https://github.com/RailsApps/rails_apps_composer) gem
provided by the [RailsApps Project](http://railsapps.github.io/).

Running on Local machine
========================
* Verify and fix local database username and password here: [config/database.yml](https://github.com/balaji/angadi/blob/master/config/database.yml)
* Run the following command on terminal from the project folder
```
$ bundle install
$ RAILS_ENV=development rake db:create db:setup
$ rails server
```

Features
========
### Website
The website UI is built using [bootstrap 3](http://getbootstrap.com). 

### Admin page
Admin page provides interface to edit products, categories, brands and campaigns. [https://angadi-balaji.herokuapp.com/admin](https://angadi-balaji.herokuapp.com/admin)

### Notable implementations
* Category -> Sub-Category -> Sub-Sub-category is implemented via a tree-like structure with each record in `categories` table having a `parent_id` that is an `id` of the categories record itself. Querying all products belong to a particular node in the tree is implemented via psql recursive query.
```
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
```

* Full text search is done via Postgresql's `tsvector` and `tsquery` datatypes.
```
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
```

* Editing products in Admin interface uses the [best_in_place](https://github.com/bernat/best_in_place) gem.
* Other notable gems used:
    * [rmagick](https://github.com/rmagick/rmagick) for image compression
    * [will_paginate](https://github.com/mislav/will_paginate)

### TODO Features and enhancements
* Create products, categories, brands, campaigns via Admin interface
* Rating and Reviews
* Discounts
* Multiple images for products
* Campaign pages
* Chain multiple searches together
* Custom UI (enhance the default bootstrap UI)
* Improve test coverage
