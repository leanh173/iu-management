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

ActiveRecord::Schema.define(version: 20160819014257) do

  create_table "courses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "code"
    t.string   "level"
    t.integer  "time"
    t.integer  "price_peso"
    t.integer  "price_vnd"
    t.integer  "rate_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "students", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "short_name"
    t.date     "start_date"
    t.string   "status"
    t.date     "dob"
    t.string   "address"
    t.string   "phone"
    t.string   "email"
    t.string   "skype"
    t.string   "bank_info"
    t.text     "note",       limit: 65535
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "study_courses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "teacher_id"
    t.integer  "student_id"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["course_id"], name: "index_study_courses_on_course_id", using: :btree
    t.index ["student_id"], name: "index_study_courses_on_student_id", using: :btree
    t.index ["teacher_id"], name: "index_study_courses_on_teacher_id", using: :btree
  end

  create_table "study_date_per_weeks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "study_course_id"
    t.string   "study_at_day"
    t.integer  "time_study"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["study_course_id"], name: "index_study_date_per_weeks_on_study_course_id", using: :btree
  end

  create_table "study_dates", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "study_course_id"
    t.string   "status"
    t.integer  "teacher_id"
    t.date     "study_day"
    t.text     "note",            limit: 65535
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
    t.index ["study_course_id"], name: "index_study_dates_on_study_course_id", using: :btree
    t.index ["teacher_id"], name: "index_study_dates_on_teacher_id", using: :btree
  end

  create_table "teacher_ranks", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "teacher_id"
    t.integer  "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_teacher_ranks_on_teacher_id", using: :btree
  end

  create_table "teachers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "name"
    t.string   "short_name"
    t.string   "status"
    t.date     "dob"
    t.string   "address"
    t.string   "certificate"
    t.text     "swot",        limit: 65535
    t.string   "phone"
    t.string   "email"
    t.string   "skype"
    t.string   "bank_info"
    t.text     "note",        limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "study_courses", "courses"
  add_foreign_key "study_courses", "students"
  add_foreign_key "study_courses", "teachers"
  add_foreign_key "study_date_per_weeks", "study_courses"
  add_foreign_key "study_dates", "study_courses"
  add_foreign_key "study_dates", "teachers"
end
