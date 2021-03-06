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

ActiveRecord::Schema.define(version: 20140705111253) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "checkup_records", force: true do |t|
    t.integer  "patient_id"
    t.integer  "user_id"
    t.float    "height"
    t.float    "weight"
    t.text     "mental_assessment"
    t.text     "physical_assessment"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "checkup_records", ["patient_id"], name: "index_checkup_records_on_patient_id", using: :btree
  add_index "checkup_records", ["user_id"], name: "index_checkup_records_on_user_id", using: :btree

  create_table "distribution_centers", force: true do |t|
    t.string   "name"
    t.text     "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dose_administration_records", force: true do |t|
    t.integer  "patient_id"
    t.integer  "user_id"
    t.integer  "nakshatra_date_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "dose_administration_records", ["nakshatra_date_id"], name: "index_dose_administration_records_on_nakshatra_date_id", using: :btree
  add_index "dose_administration_records", ["patient_id"], name: "index_dose_administration_records_on_patient_id", using: :btree
  add_index "dose_administration_records", ["user_id"], name: "index_dose_administration_records_on_user_id", using: :btree

  create_table "nakshatra_dates", force: true do |t|
    t.date     "nakshatra_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", force: true do |t|
    t.string   "name"
    t.date     "date_of_birth"
    t.string   "fathers_name"
    t.string   "mothers_name"
    t.text     "address"
    t.string   "mobile"
    t.string   "landline"
    t.text     "present_complaints"
    t.string   "registration_number"
    t.string   "gender"
    t.string   "blood_group"
    t.integer  "distribution_center_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "patients", ["distribution_center_id"], name: "index_patients_on_distribution_center_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "role"
    t.integer  "distribution_center_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
