# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_23_221448) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.date "dob"
    t.bigint "mobile"
    t.string "adress"
    t.bigint "NationalId"
    t.string "gender"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "doctors", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.date "dob"
    t.bigint "mobile"
    t.string "adress"
    t.bigint "NationalId"
    t.string "gender"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_doctors_on_email", unique: true
    t.index ["reset_password_token"], name: "index_doctors_on_reset_password_token", unique: true
  end

  create_table "paitents", force: :cascade do |t|
    t.string "name"
    t.string "adress"
    t.bigint "National_id"
    t.bigint "mobile"
    t.string "gender"
    t.date "dob"
    t.bigint "serialnumber"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "receptionests", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.date "dob"
    t.bigint "mobile"
    t.string "adress"
    t.bigint "NationalId"
    t.string "gender"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_receptionests_on_email", unique: true
    t.index ["reset_password_token"], name: "index_receptionests_on_reset_password_token", unique: true
  end

  create_table "reports", force: :cascade do |t|
    t.string "label"
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "paitent_id", null: false
    t.bigint "doctor_id", null: false
    t.bigint "x_ray_id", null: false
    t.index ["doctor_id"], name: "index_reports_on_doctor_id"
    t.index ["paitent_id"], name: "index_reports_on_paitent_id"
    t.index ["x_ray_id"], name: "index_reports_on_x_ray_id"
  end

  create_table "technicians", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name"
    t.date "dob"
    t.bigint "mobile"
    t.string "adress"
    t.bigint "NationalId"
    t.string "gender"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_technicians_on_email", unique: true
    t.index ["reset_password_token"], name: "index_technicians_on_reset_password_token", unique: true
  end

  create_table "visits", force: :cascade do |t|
    t.bigint "paitent_serialnumer"
    t.integer "counter"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "receptionest_id", null: false
    t.bigint "report_id", null: false
    t.index ["receptionest_id"], name: "index_visits_on_receptionest_id"
    t.index ["report_id"], name: "index_visits_on_report_id"
  end

  create_table "x_rays", force: :cascade do |t|
    t.string "image_url"
    t.string "label"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "paitent_id", null: false
    t.index ["paitent_id"], name: "index_x_rays_on_paitent_id"
  end

  add_foreign_key "reports", "doctors"
  add_foreign_key "reports", "paitents"
  add_foreign_key "reports", "x_rays"
  add_foreign_key "visits", "receptionests"
  add_foreign_key "visits", "reports"
  add_foreign_key "x_rays", "paitents"
end
