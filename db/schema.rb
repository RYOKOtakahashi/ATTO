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

ActiveRecord::Schema.define(version: 2018_10_11_115448) do

  create_table "items", force: :cascade do |t|
    t.integer "user_id", null: false
    t.text "item_name", null: false
    t.float "item_quantity"
    t.float "price"
    t.integer "weight"
    t.text "item_memo_one"
    t.date "deadline"
    t.string "unit"
    t.string "category"
    t.string "subcategory"
    t.text "item_image_id"
    t.datetime "notice_day"
    t.string "author"
    t.string "maker"
    t.string "color"
    t.string "size"
    t.string "use_place"
    t.string "purchase_place"
    t.text "item_memo_two"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "price_unit"
    t.index ["item_name"], name: "index_items_on_item_name"
  end

  create_table "stars", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "item_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: ""
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
  end

end
