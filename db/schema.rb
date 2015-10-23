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

ActiveRecord::Schema.define(version: 20151013133429) do

  create_table "assignments", force: :cascade do |t|
    t.integer  "task_id",         limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "registration_id", limit: 4
  end

  create_table "events", force: :cascade do |t|
    t.integer  "organization_id", limit: 4
    t.string   "name",            limit: 255
    t.datetime "start"
    t.datetime "end"
    t.string   "location",        limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "gatherings", force: :cascade do |t|
    t.string   "location",   limit: 255
    t.datetime "start"
    t.datetime "end"
    t.string   "leader",     limit: 255
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "event_id",   limit: 4
  end

  create_table "groups", force: :cascade do |t|
    t.integer  "organization_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "event_id",        limit: 4
  end

  create_table "items", force: :cascade do |t|
    t.string   "name",            limit: 255
    t.integer  "number",          limit: 4
    t.datetime "time_needed"
    t.string   "location_needed", limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "event_id",        limit: 4
  end

  create_table "lodgings", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "location",    limit: 255
    t.integer  "max_males",   limit: 4
    t.integer  "max_females", limit: 4
    t.integer  "max_neutral", limit: 4
    t.integer  "event_id",    limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "meals", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "start"
    t.datetime "end"
    t.string   "location",   limit: 255
    t.string   "menu",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.integer  "event_id",   limit: 4
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "people", force: :cascade do |t|
    t.string   "first_name",      limit: 255
    t.string   "last_name",       limit: 255
    t.integer  "age",             limit: 4
    t.integer  "organization_id", limit: 4
    t.string   "email",           limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "promises", force: :cascade do |t|
    t.integer  "item_id",         limit: 4
    t.integer  "registration_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "registrations", force: :cascade do |t|
    t.integer  "group_id",        limit: 4
    t.integer  "event_id",        limit: 4
    t.integer  "person_id",       limit: 4
    t.boolean  "paid"
    t.integer  "organization_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "lodging_id",      limit: 4
  end

  create_table "reservations", force: :cascade do |t|
    t.integer  "meal_id",         limit: 4
    t.integer  "registration_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "signups", force: :cascade do |t|
    t.integer  "gathering_id",    limit: 4
    t.integer  "registration_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "tasks", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.string   "location",    limit: 255
    t.datetime "start"
    t.datetime "end"
    t.string   "description", limit: 255
    t.integer  "number",      limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.integer  "event_id",    limit: 4
  end

end
