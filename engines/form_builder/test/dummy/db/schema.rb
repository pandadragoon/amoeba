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

ActiveRecord::Schema.define(version: 2021_09_19_155105) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "form_builder_answers", force: :cascade do |t|
    t.string "label"
    t.json "value"
    t.integer "type"
    t.json "metadata"
    t.json "modifiers"
    t.uuid "identifier"
    t.uuid "created_by_id"
    t.uuid "updated_by_id"
    t.uuid "question_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "form_builder_forms", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.json "metadata"
    t.json "modifiers"
    t.uuid "identifier"
    t.uuid "created_by_id"
    t.uuid "updated_by_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "form_builder_locations", force: :cascade do |t|
    t.string "name"
    t.json "metadata"
    t.uuid "identifier"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "form_builder_orgs", force: :cascade do |t|
    t.string "name"
    t.json "metadata"
    t.uuid "identifier"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "form_builder_questions", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.json "metadata"
    t.json "modifiers"
    t.uuid "identifier"
    t.uuid "created_by_id"
    t.uuid "updated_by_id"
    t.uuid "section_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "form_builder_sections", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.json "metadata"
    t.json "modifiers"
    t.uuid "identifier"
    t.uuid "created_by_id"
    t.uuid "updated_by_id"
    t.uuid "form_builder_form_id"
    t.uuid "template_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "form_builder_templates", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.json "metadata"
    t.json "modifiers"
    t.uuid "identifier"
    t.uuid "created_by_id"
    t.uuid "updated_by_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "form_builder_users", force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.json "metadata"
    t.uuid "identifier"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "form_builder_versions", force: :cascade do |t|
    t.integer "type"
    t.integer "status"
    t.uuid "edited_by_id"
    t.uuid "created_by_id"
    t.json "metadata"
    t.uuid "identifier"
    t.uuid "resource_id"
    t.uuid "document"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
