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

ActiveRecord::Schema.define(version: 2021_04_02_023423) do

  create_table "dispatchers", force: :cascade do |t|
    t.string "name"
    t.integer "team_id"
    t.string "password"
    t.string "email"
    t.string "username"
  end

  create_table "drivers", force: :cascade do |t|
    t.string "name"
    t.integer "truck"
    t.string "trailer"
    t.integer "team_id"
  end

  create_table "join_dispatch_driver", force: :cascade do |t|
    t.integer "load_id"
    t.integer "dispatcher_id"
    t.integer "driver_id"
  end

  create_table "loads", force: :cascade do |t|
    t.string "pickup"
    t.string "delivery"
    t.integer "miles"
    t.integer "amount"
    t.integer "dispatcher_id"
    t.integer "driver_id"
    t.string "notes"
    t.integer "team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
  end

end
