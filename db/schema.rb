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

ActiveRecord::Schema.define(version: 20170402063210) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "formal_educations", force: :cascade do |t|
    t.integer  "profile_id"
    t.string   "level"
    t.string   "institution"
    t.date     "start_date"
    t.date     "end_date"
    t.string   "certification"
    t.string   "faculty"
    t.string   "department"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "job_postings", force: :cascade do |t|
    t.string   "code"
    t.string   "position"
    t.string   "description"
    t.text     "requirement"
    t.date     "post_date"
    t.date     "expired_date"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "language_abilities", force: :cascade do |t|
    t.integer  "profile_id"
    t.string   "language"
    t.integer  "speech"
    t.integer  "writing"
    t.integer  "reading"
    t.string   "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "no"
    t.string   "name"
    t.string   "id_no"
    t.string   "nationality"
    t.string   "tribe"
    t.string   "place_of_birth"
    t.date     "date_of_birth"
    t.float    "height"
    t.float    "weight"
    t.string   "blood"
    t.string   "sex"
    t.string   "married"
    t.string   "religion"
    t.string   "address_as_id"
    t.string   "current_address"
    t.string   "phone"
    t.string   "mobile_phone"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
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
    t.string   "complete_name"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

end
