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

<<<<<<< HEAD
ActiveRecord::Schema[7.0].define(version: 2023_11_27_153104) do
  create_table "movies", force: :cascade do |t|
    t.string "name"
    t.integer "year"
    t.string "genre"
    t.text "synopsis"
    t.string "director"
    t.float "allocine_rating"
    t.integer "my_rating"
    t.boolean "already_seen"
=======
ActiveRecord::Schema[7.0].define(version: 2023_11_28_173216) do
  create_table "albums", force: :cascade do |t|
    t.string "title"
    t.string "artist"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tracks", force: :cascade do |t|
    t.string "title"
    t.string "album"
    t.string "artist"
    t.integer "duration"
    t.integer "size"
    t.float "price"
>>>>>>> 8e7c0c0 (second commit: pushing the app)
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
