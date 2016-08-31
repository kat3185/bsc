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

ActiveRecord::Schema.define(version: 20160830195611) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bands", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_slot_users", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "event_volunteer_slot_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.index ["event_volunteer_slot_id"], name: "index_event_slot_users_on_event_volunteer_slot_id", using: :btree
    t.index ["user_id", "event_volunteer_slot_id"], name: "idx_user_availability", unique: true, using: :btree
    t.index ["user_id"], name: "index_event_slot_users_on_user_id", using: :btree
  end

  create_table "event_volunteer_slots", force: :cascade do |t|
    t.integer  "event_id",   null: false
    t.integer  "role_id",    null: false
    t.datetime "start_time", null: false
    t.datetime "end_time",   null: false
    t.text     "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "event_volunteers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "event_slot_user_id"
    t.text     "notes"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.index ["event_slot_user_id"], name: "index_event_volunteers_on_event_slot_user_id", using: :btree
    t.index ["user_id"], name: "index_event_volunteers_on_user_id", using: :btree
  end

  create_table "events", force: :cascade do |t|
    t.text     "notes"
    t.datetime "start_time",                         null: false
    t.datetime "end_time"
    t.boolean  "weekly_friday_dance", default: true, null: false
    t.integer  "venue_id"
    t.integer  "band_id"
    t.integer  "price_id",            default: 1,    null: false
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "prices", force: :cascade do |t|
    t.integer  "general",    null: false
    t.integer  "student"
    t.integer  "discounted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_roles", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_user_roles_on_role_id", using: :btree
    t.index ["user_id", "role_id"], name: "index_user_roles_on_user_id_and_role_id", unique: true, using: :btree
    t.index ["user_id"], name: "index_user_roles_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  create_table "venues", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "event_slot_users", "event_volunteer_slots"
  add_foreign_key "event_slot_users", "users"
  add_foreign_key "event_volunteers", "event_slot_users"
  add_foreign_key "event_volunteers", "users"
  add_foreign_key "user_roles", "roles"
  add_foreign_key "user_roles", "users"
end
