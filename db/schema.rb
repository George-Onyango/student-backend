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

ActiveRecord::Schema.define(version: 2022_11_09_200508) do

  create_table "courses", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "courses_students", id: false, force: :cascade do |t|
    t.integer "course_id"
    t.integer "student_id"
    t.index ["course_id"], name: "index_courses_students_on_course_id"
    t.index ["student_id"], name: "index_courses_students_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "surname"
    t.string "gender"
    t.string "password"
    t.integer "national_id"
    t.integer "admission_number"
    t.integer "units_id", null: false
    t.date "date_of_birth"
    t.index ["units_id"], name: "index_students_on_units_id"
  end

  create_table "units", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.integer "code"
    t.string "unit_grade"
    t.string "category_id"
    t.integer "students_id", null: false
    t.integer "student_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["students_id"], name: "index_units_on_students_id"
  end

  add_foreign_key "students", "units", column: "units_id"
  add_foreign_key "units", "students", column: "students_id"
end
