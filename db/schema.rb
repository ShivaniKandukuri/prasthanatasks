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

ActiveRecord::Schema.define(version: 2022_06_17_112839) do

  create_table "accounts", force: :cascade do |t|
    t.integer "accoutnumber"
    t.integer "ifsccode"
    t.string "accoutholdername"
    t.string "branchname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "User_id", null: false
    t.index ["User_id"], name: "index_accounts_on_User_id"
  end

  create_table "appointments", force: :cascade do |t|
    t.string "time"
    t.string "day"
    t.integer "doctor_id", null: false
    t.integer "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctor_id"], name: "index_appointments_on_doctor_id"
    t.index ["patient_id"], name: "index_appointments_on_patient_id"
  end

  create_table "authors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "gender"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "books", force: :cascade do |t|
    t.string "name"
    t.integer "pagescount"
    t.integer "price"
    t.integer "author_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["author_id"], name: "index_books_on_author_id"
  end

  create_table "cabins", force: :cascade do |t|
    t.integer "count"
  end

  create_table "cabins_offices", id: false, force: :cascade do |t|
    t.integer "office_id", null: false
    t.integer "cabin_id", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "type"
  end

  create_table "categories_products", id: false, force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "category_id", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "place"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "consumers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.text "address"
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "age"
  end

  create_table "customers_procuts", id: false, force: :cascade do |t|
    t.integer "customer_id", null: false
    t.integer "procut_id", null: false
  end

  create_table "delllaptops", force: :cascade do |t|
    t.text "description"
    t.integer "cost"
    t.integer "ram"
  end

  create_table "doctors", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "gender"
    t.string "specialization"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "gender"
    t.string "department"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "Company_id", null: false
    t.index ["Company_id"], name: "index_employees_on_Company_id"
  end

  create_table "hosts", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "age"
    t.string "dateofbirth"
    t.string "email"
    t.string "phonenumber"
    t.string "pincode"
    t.string "place"
    t.string "education"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "magazines", force: :cascade do |t|
    t.string "name"
    t.text "descriptoin"
    t.integer "cost"
  end

  create_table "malls", force: :cascade do |t|
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "distance"
  end

  create_table "mobiles", force: :cascade do |t|
    t.string "name"
    t.integer "ram"
    t.integer "storage"
    t.integer "cost"
  end

  create_table "novels", force: :cascade do |t|
  end

  create_table "offices", force: :cascade do |t|
    t.string "place"
    t.integer "countofworkers"
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "health_issue"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "procuts", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "Partnumber"
    t.text "Details"
    t.integer "consumer_id", null: false
    t.index ["consumer_id"], name: "index_procuts_on_consumer_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.decimal "price"
    t.integer "weight"
    t.boolean "in_stock"
    t.date "expiration_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "productsofstore", force: :cascade do |t|
    t.string "identity"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "Price"
  end

  create_table "professors", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.text "bio"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sentences", force: :cascade do |t|
    t.integer "countofletters"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.integer "num"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "students_teachers", id: false, force: :cascade do |t|
    t.integer "student_id", null: false
    t.integer "teacher_id", null: false
  end

  create_table "tables", force: :cascade do |t|
    t.string "categories"
    t.string "name"
    t.string "type"
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "subject"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "texts", force: :cascade do |t|
    t.string "length"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "gender"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "accounts", "Users"
  add_foreign_key "appointments", "doctors"
  add_foreign_key "appointments", "patients"
  add_foreign_key "books", "authors"
  add_foreign_key "employees", "Companies"
  add_foreign_key "procuts", "consumers"
end
