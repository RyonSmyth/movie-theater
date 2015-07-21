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

ActiveRecord::Schema.define(version: 20150721042009) do

  create_table "movies", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image_url"
    t.string   "first_showing"
    t.string   "second_showing"
    t.string   "third_showing"
    t.string   "fourth_showing"
    t.string   "fifth_showing"
    t.string   "sixth_showing"
    t.string   "seventh_showing"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
