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

ActiveRecord::Schema.define(version: 2021_06_12_154304) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.boolean "capital"
    t.integer "state_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.integer "user_id"
    t.index ["state_id"], name: "index_cities_on_state_id"
    t.index ["user_id"], name: "index_cities_on_user_id"
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "hiring_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.integer "user_id"
    t.index ["user_id"], name: "index_hiring_types_on_user_id"
  end

  create_table "job_alerts", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "alerteable_id"
    t.string "alerteable_type"
    t.integer "modality", default: 0
    t.boolean "status"
    t.string "token"
  end

  create_table "job_applications", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.float "desirable_salary"
    t.text "presentation_letter"
    t.integer "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_job_applications_on_job_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "hiring_type_id"
    t.integer "occupation_area_id"
    t.float "salary"
    t.integer "modality"
    t.string "location"
    t.integer "how_to_apply"
    t.string "application_path"
    t.date "expiration_date"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "state_id"
    t.integer "city_id"
    t.boolean "expirated"
    t.string "slug"
    t.string "keywords"
    t.text "requirements"
    t.text "desirable"
    t.text "others"
    t.datetime "deleted_at"
    t.boolean "featured"
    t.index ["city_id"], name: "index_jobs_on_city_id"
    t.index ["hiring_type_id"], name: "index_jobs_on_hiring_type_id"
    t.index ["occupation_area_id"], name: "index_jobs_on_occupation_area_id"
    t.index ["state_id"], name: "index_jobs_on_state_id"
    t.index ["user_id"], name: "index_jobs_on_user_id"
  end

  create_table "occupation_areas", force: :cascade do |t|
    t.string "name"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.index ["user_id"], name: "index_occupation_areas_on_user_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.float "price"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at"
    t.index ["user_id"], name: "index_plans_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "phone"
    t.string "name"
    t.text "description"
    t.string "website"
    t.integer "state_id"
    t.integer "city_id"
    t.string "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.string "slug"
    t.index ["city_id"], name: "index_profiles_on_city_id"
    t.index ["state_id"], name: "index_profiles_on_state_id"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.string "acronym"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.integer "user_id"
    t.index ["user_id"], name: "index_states_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "featured"
    t.boolean "admin"
    t.datetime "deleted_at"
    t.string "cpf_or_cnpj"
    t.string "name"
    t.integer "plan_id", default: 1
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["plan_id"], name: "index_users_on_plan_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", limit: 8, null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

end
