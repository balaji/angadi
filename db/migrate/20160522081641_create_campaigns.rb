class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns, id: :uuid do |t|
      t.string :name, unique: true
      t.text :target_url, null: false
      t.string :image_id, null: false
      t.datetime :start_time
      t.datetime :end_time
      t.timestamps null: false
    end
    execute 'alter table campaigns alter column start_time set default now()'
  end
end
