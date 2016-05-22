# :nodoc:
class AddDeleteToCampaign < ActiveRecord::Migration
  def change
    add_column :campaigns, :deleted, :boolean, default: false
  end
end
