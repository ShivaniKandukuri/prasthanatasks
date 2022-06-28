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

ActiveRecord::Schema.define(version: 2022_06_27_040726) do

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

  create_table "add_restaurant_reference_to_ratings", force: :cascade do |t|
    t.integer "Restaurant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["Restaurant_id"], name: "index_add_restaurant_reference_to_ratings_on_Restaurant_id"
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
    t.datetime "created_at", precision: 6
    t.datetime "updated_at", precision: 6
  end

  create_table "distributors", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "company"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
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

  create_table "images", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "invoices", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "leaders", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "age"
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
    t.integer "distance"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ministers", force: :cascade do |t|
    t.string "name"
    t.string "age"
    t.string "party"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mobiles", force: :cascade do |t|
    t.string "name"
    t.integer "ram"
    t.integer "storage"
    t.integer "cost"
  end

  create_table "offices", force: :cascade do |t|
    t.string "place"
    t.integer "countofworkers"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_offices_on_email", unique: true
    t.index ["reset_password_token"], name: "index_offices_on_reset_password_token", unique: true
  end

  create_table "parties", force: :cascade do |t|
    t.string "name"
    t.string "count"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "health_issue"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "photos", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "politicians", force: :cascade do |t|
    t.string "name"
    t.string "party"
    t.integer "age"
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

  create_table "professors", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.text "bio"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "publishers", force: :cascade do |t|
    t.string "name"
    t.string "organization_name"
    t.string "age"
    t.string "place"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "purchases", force: :cascade do |t|
    t.string "name"
    t.integer "cost"
    t.integer "quantity"
    t.integer "invoice_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["invoice_id"], name: "index_purchases_on_invoice_id"
  end

  create_table "ratings", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.date "start_date"
    t.date "end_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "place"
    t.string "name"
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

  create_table "voters", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "age"
    t.string "place"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "accounts", "Users"
  add_foreign_key "add_restaurant_reference_to_ratings", "Restaurants"
  add_foreign_key "appointments", "doctors"
  add_foreign_key "appointments", "patients"
  add_foreign_key "books", "authors"
  add_foreign_key "employees", "Companies"
  add_foreign_key "procuts", "consumers"
  add_foreign_key "purchases", "invoices"
end
