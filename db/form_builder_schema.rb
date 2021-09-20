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

ActiveRecord::Schema.define(version: 2021_09_19_183018) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "form_builder_answers", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "label"
    t.json "value"
    t.string "type"
    t.json "metadata"
    t.json "modifiers"
    t.uuid "identifier", default: -> { "gen_random_uuid()" }, null: false
    t.uuid "form_builder_question_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.uuid "created_by_id"
    t.uuid "updated_by_id"
    t.index ["created_by_id"], name: "index_form_builder_answers_on_created_by_id"
    t.index ["form_builder_question_id"], name: "index_form_builder_answers_on_form_builder_question_id"
    t.index ["updated_by_id"], name: "index_form_builder_answers_on_updated_by_id"
  end

  create_table "form_builder_forms", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.json "metadata"
    t.json "modifiers"
    t.uuid "identifier", default: -> { "gen_random_uuid()" }, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.uuid "created_by_id"
    t.uuid "updated_by_id"
    t.index ["created_by_id"], name: "index_form_builder_forms_on_created_by_id"
    t.index ["updated_by_id"], name: "index_form_builder_forms_on_updated_by_id"
  end

  create_table "form_builder_locations", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.json "metadata"
    t.uuid "identifier", default: -> { "gen_random_uuid()" }, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "form_builder_orgs", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.json "metadata"
    t.uuid "identifier", default: -> { "gen_random_uuid()" }, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "form_builder_questions", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.json "metadata"
    t.json "modifiers"
    t.string "type"
    t.uuid "identifier", default: -> { "gen_random_uuid()" }, null: false
    t.uuid "form_builder_section_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.uuid "created_by_id"
    t.uuid "updated_by_id"
    t.index ["created_by_id"], name: "index_form_builder_questions_on_created_by_id"
    t.index ["form_builder_section_id"], name: "index_form_builder_questions_on_form_builder_section_id"
    t.index ["updated_by_id"], name: "index_form_builder_questions_on_updated_by_id"
  end

  create_table "form_builder_sections", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.json "metadata"
    t.json "modifiers"
    t.uuid "identifier", default: -> { "gen_random_uuid()" }, null: false
    t.uuid "form_builder_form_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.uuid "created_by_id"
    t.uuid "updated_by_id"
    t.uuid "form_builder_template_id"
    t.index ["created_by_id"], name: "index_form_builder_sections_on_created_by_id"
    t.index ["form_builder_form_id"], name: "index_form_builder_sections_on_form_builder_form_id"
    t.index ["form_builder_template_id"], name: "index_form_builder_sections_on_form_builder_template_id"
    t.index ["updated_by_id"], name: "index_form_builder_sections_on_updated_by_id"
  end

  create_table "form_builder_templates", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.json "metadata"
    t.json "modifiers"
    t.uuid "identifier", default: -> { "gen_random_uuid()" }, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.uuid "created_by_id"
    t.uuid "updated_by_id"
    t.index ["created_by_id"], name: "index_form_builder_templates_on_created_by_id"
    t.index ["updated_by_id"], name: "index_form_builder_templates_on_updated_by_id"
  end

  create_table "form_builder_users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "first_name"
    t.string "middle_name"
    t.string "last_name"
    t.json "metadata"
    t.uuid "identifier", default: -> { "gen_random_uuid()" }, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "form_builder_versions", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "type"
    t.string "status"
    t.json "metadata"
    t.uuid "identifier", default: -> { "gen_random_uuid()" }, null: false
    t.uuid "resource_id"
    t.uuid "document"
    t.uuid "form_builder_form_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.uuid "created_by_id"
    t.uuid "updated_by_id"
    t.index ["created_by_id"], name: "index_form_builder_versions_on_created_by_id"
    t.index ["form_builder_form_id"], name: "index_form_builder_versions_on_form_builder_form_id"
    t.index ["updated_by_id"], name: "index_form_builder_versions_on_updated_by_id"
  end

  add_foreign_key "form_builder_answers", "form_builder_users", column: "created_by_id"
  add_foreign_key "form_builder_answers", "form_builder_users", column: "updated_by_id"
  add_foreign_key "form_builder_forms", "form_builder_users", column: "created_by_id"
  add_foreign_key "form_builder_forms", "form_builder_users", column: "updated_by_id"
  add_foreign_key "form_builder_questions", "form_builder_users", column: "created_by_id"
  add_foreign_key "form_builder_questions", "form_builder_users", column: "updated_by_id"
  add_foreign_key "form_builder_sections", "form_builder_users", column: "created_by_id"
  add_foreign_key "form_builder_sections", "form_builder_users", column: "updated_by_id"
  add_foreign_key "form_builder_templates", "form_builder_users", column: "created_by_id"
  add_foreign_key "form_builder_templates", "form_builder_users", column: "updated_by_id"
  add_foreign_key "form_builder_versions", "form_builder_users", column: "created_by_id"
  add_foreign_key "form_builder_versions", "form_builder_users", column: "updated_by_id"
end
