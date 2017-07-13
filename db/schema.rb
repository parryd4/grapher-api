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

ActiveRecord::Schema.define(version: 20170713151819) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "custom_charts", force: :cascade do |t|
    t.bigint "data_set_id"
    t.string "x"
    t.string "y"
    t.string "color", default: "red"
    t.boolean "grid", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["data_set_id"], name: "index_custom_charts_on_data_set_id"
  end

  create_table "data_sets", force: :cascade do |t|
    t.bigint "user_id"
    t.text "content"
    t.string "file_name"
    t.boolean "public", default: true
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_data_sets_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "custom_charts", "data_sets"
  add_foreign_key "data_sets", "users"
end
