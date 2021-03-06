# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160522175841) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "uuid-ossp"

  create_table "brands", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "name",                       null: false
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "deleted",    default: false
  end

  add_index "brands", ["name"], name: "index_brands_on_name", unique: true, using: :btree

  create_table "campaigns", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "name"
    t.text     "target_url",                   null: false
    t.string   "image_id",                     null: false
    t.datetime "start_time", default: "now()"
    t.datetime "end_time"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.boolean  "deleted",    default: false
  end

  create_table "categories", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "name",                       null: false
    t.uuid     "parent_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.boolean  "deleted",    default: false
  end

  add_index "categories", ["name"], name: "index_categories_on_name", unique: true, using: :btree
  add_index "categories", ["parent_id"], name: "index_categories_on_parent_id", using: :btree

  create_table "products", id: :uuid, default: "uuid_generate_v4()", force: :cascade do |t|
    t.string   "name",                                  null: false
    t.text     "description"
    t.uuid     "category_id",                           null: false
    t.uuid     "brand_id",                              null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.boolean  "deleted",               default: false
    t.money    "base_price",  scale: 2
    t.string   "image_id"
  end

  add_index "products", ["image_id"], name: "index_products_on_image_id", unique: true, using: :btree
  add_index "products", ["name"], name: "index_products_on_name", unique: true, using: :btree

  add_foreign_key "categories", "categories", column: "parent_id"
  add_foreign_key "products", "brands"
  add_foreign_key "products", "categories"
end
