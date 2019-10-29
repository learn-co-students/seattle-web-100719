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

ActiveRecord::Schema.define(version: 2019_10_21_180306) do

  create_table "books", force: :cascade do |t|
    t.string "title"
    t.string "published_date"
    t.string "description"
  end

  create_table "employers", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.integer "salary"
    t.integer "sick_leave"
    t.string "boss"
  end

  create_table "employers_pets", force: :cascade do |t|
    t.integer "employer_id"
    t.integer "pet_id"
  end

  create_table "pets", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "breed"
  end

end