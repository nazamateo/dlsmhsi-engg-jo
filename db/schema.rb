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

ActiveRecord::Schema.define(version: 2022_07_15_042025) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "jobs", force: :cascade do |t|
    t.bigint "requestor_id", null: false
    t.text "description"
    t.bigint "assessor_id", null: false
    t.bigint "staff_id", null: false
    t.string "maintenance_unit"
    t.string "status"
    t.string "remarks"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["assessor_id"], name: "index_jobs_on_assessor_id"
    t.index ["requestor_id"], name: "index_jobs_on_requestor_id"
    t.index ["staff_id"], name: "index_jobs_on_staff_id"
  end

  create_table "personnels", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "maintenance_unit"
    t.string "position"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "position"
    t.string "unit"
    t.string "service"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "jobs", "personnels", column: "assessor_id"
  add_foreign_key "jobs", "personnels", column: "staff_id"
  add_foreign_key "jobs", "users", column: "requestor_id"
end
