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

ActiveRecord::Schema.define(version: 20150518232934) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "jobs", force: :cascade do |t|
    t.string   "work_request"
    t.string   "estimate_number"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "work_order"
    t.string   "description"
    t.integer  "percentage_complete"
    t.datetime "due_date"
    t.boolean  "scope_job",           default: false
    t.boolean  "survey_job",          default: false
    t.boolean  "risk_assess",         default: false
    t.boolean  "init_smes",           default: false
    t.boolean  "lv_drop_catan",       default: false
    t.boolean  "design_calcs",        default: false
    t.boolean  "prelim_dwg",          default: false
    t.boolean  "check_internals",     default: false
    t.boolean  "peer_check",          default: false
    t.boolean  "outage_manage",       default: false
    t.boolean  "obtain_quotes",       default: false
    t.boolean  "estimate",            default: false
    t.boolean  "approved_dwg",        default: false
    t.boolean  "admin_emails",        default: false
    t.boolean  "revalidation",        default: false
    t.boolean  "admin_received",      default: false
    t.boolean  "peg_job",             default: false
    t.text     "notes"
    t.boolean  "design_maint",        default: false
    t.boolean  "completed",           default: false
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
