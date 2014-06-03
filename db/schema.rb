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

ActiveRecord::Schema.define(version: 20140603172737) do

  create_table "issues", force: true do |t|
    t.integer  "thermostat_id"
    t.text     "description"
    t.string   "status"
    t.text     "resolution"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "issues", ["thermostat_id"], name: "index_issues_on_thermostat_id"

  create_table "thermostat_histories", force: true do |t|
    t.integer  "thermostat_id"
    t.integer  "temperature"
    t.integer  "humidity"
    t.integer  "kw"
    t.integer  "co2"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "thermostat_histories", ["thermostat_id"], name: "index_thermostat_histories_on_thermostat_id"

  create_table "thermostats", force: true do |t|
    t.string   "serial"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
