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

ActiveRecord::Schema.define(version: 20150813110129) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "jobs", force: :cascade do |t|
    t.string   "work_request"
    t.string   "estimate_number"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.integer  "work_order"
    t.string   "description"
    t.integer  "percentage_complete"
    t.datetime "due_date"
    t.integer  "scope_job",           default: 0
    t.integer  "survey_job",          default: 0
    t.integer  "risk_assess",         default: 0
    t.integer  "init_smes",           default: 0
    t.integer  "lv_drop_catan",       default: 0
    t.integer  "design_calcs",        default: 0
    t.integer  "prelim_dwg",          default: 0
    t.integer  "check_internals",     default: 0
    t.integer  "peer_check",          default: 0
    t.integer  "outage_manage",       default: 0
    t.integer  "obtain_quotes",       default: 0
    t.integer  "estimate",            default: 0
    t.integer  "approved_dwg",        default: 0
    t.integer  "admin_emails",        default: 0
    t.integer  "revalidation",        default: 0
    t.integer  "admin_received",      default: 0
    t.integer  "peg_job",             default: 0
    t.text     "notes"
    t.integer  "design_maint",        default: 0
    t.integer  "completed",           default: 0
    t.integer  "user_id"
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
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "unconfirmed_email"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
