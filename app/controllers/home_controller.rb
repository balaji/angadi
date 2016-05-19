# Landing page for the Angadi Website
class HomeController < ApplicationController
  def index
    render locals: { categories: Category.where(parent_id: nil,
                                                deleted: false) }
  end
end
