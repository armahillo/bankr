# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_01_02_224249) do

  create_table "bankr_banks", force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bankr_base_items", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "bankr_items", force: :cascade do |t|
    t.string "name"
    t.integer "bankr_base_item_id", null: false
    t.integer "bankr_bank_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index "\"base_item_id\", \"bank_id\"", name: "index_bankr_items_on_base_item_id_and_bank_id", unique: true
    t.index ["bankr_bank_id"], name: "index_bankr_items_on_bankr_bank_id"
    t.index ["bankr_base_item_id"], name: "index_bankr_items_on_bankr_base_item_id"
  end

  add_foreign_key "bankr_items", "bankr_banks"
  add_foreign_key "bankr_items", "bankr_base_items"
end
