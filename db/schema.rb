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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110314175814) do

  create_table "backends", :force => true do |t|
    t.integer  "zone_id"
    t.integer  "banner_id"
    t.integer  "views"
    t.integer  "hits"
    t.date     "day"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "banners", :force => true do |t|
    t.string "name"
    t.text   "ads_code"
    t.text   "description"
  end

  create_table "stats", :force => true do |t|
    t.integer "views"
    t.integer "hits"
    t.date    "day"
    t.integer "zone_id"
    t.integer "banner_id"
  end

  create_table "zones", :force => true do |t|
    t.string  "name"
    t.text    "description"
    t.integer "default_banner_id"
  end

end
