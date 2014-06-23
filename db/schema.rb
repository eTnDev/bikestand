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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140623200958) do

  create_table "contracts", :force => true do |t|
    t.string   "name"
    t.string   "commercial_name"
    t.string   "country_code"
    t.string   "cities"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "contracts", ["name"], :name => "index_contracts_on_name", :unique => true

  create_table "records", :force => true do |t|
    t.string   "station_id"
    t.string   "status"
    t.integer  "bike_stands"
    t.integer  "available_bike_stands"
    t.integer  "available_bikes"
    t.datetime "last_update",           :null => false
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
  end

  create_table "stations", :force => true do |t|
    t.integer  "number"
    t.string   "name"
    t.string   "address"
    t.float    "latitude"
    t.float    "longitude"
    t.float    "elevation"
    t.boolean  "banking"
    t.boolean  "bonus"
    t.integer  "contract_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "stations", ["contract_id"], :name => "index_stations_on_contract_id"
  add_index "stations", ["name"], :name => "index_stations_on_name", :unique => true

end
