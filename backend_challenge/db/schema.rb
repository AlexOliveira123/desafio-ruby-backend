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

ActiveRecord::Schema[7.0].define(version: 2022_09_05_212951) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "card_holders", force: :cascade do |t|
    t.string "document"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "credit_cards", force: :cascade do |t|
    t.string "card_number"
    t.integer "card_holder_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "merchants", force: :cascade do |t|
    t.string "name"
    t.string "store_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.integer "transaction_type"
    t.string "nature"
    t.float "amount"
    t.datetime "transaction_date"
    t.integer "card_holder_id"
    t.integer "merchant_id"
    t.integer "credit_card_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
