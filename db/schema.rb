# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_05_29_001103) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beans", force: :cascade do |t|
    t.bigint "origin_id"
    t.string "type"
    t.string "roast"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["origin_id"], name: "index_beans_on_origin_id"
  end

  create_table "cups", force: :cascade do |t|
    t.bigint "user_id"
    t.string "brewing_method"
    t.bigint "bean_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bean_id"], name: "index_cups_on_bean_id"
    t.index ["user_id"], name: "index_cups_on_user_id"
  end

  create_table "origins", force: :cascade do |t|
    t.string "name"
    t.string "country"
    t.string "region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "value"
    t.bigint "cup_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["cup_id"], name: "index_ratings_on_cup_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "beans", "origins"
  add_foreign_key "cups", "beans"
  add_foreign_key "cups", "users"
  add_foreign_key "ratings", "cups"
end
