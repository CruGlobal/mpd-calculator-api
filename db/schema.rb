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

ActiveRecord::Schema.define(version: 20160713123973) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fe_addresses", force: :cascade do |t|
    t.datetime "startdate"
    t.datetime "enddate"
    t.string   "address1"
    t.string   "address2"
    t.string   "address3"
    t.string   "address4"
    t.string   "address_type"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "country"
    t.integer  "person_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fe_answer_sheet_question_sheets", force: :cascade do |t|
    t.integer  "answer_sheet_id"
    t.integer  "question_sheet_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["answer_sheet_id", "question_sheet_id"], name: "answer_sheet_question_sheet", using: :btree
  end

  create_table "fe_answers", force: :cascade do |t|
    t.integer  "answer_sheet_id",         null: false
    t.integer  "question_id",             null: false
    t.text     "value"
    t.integer  "attachment_file_size"
    t.string   "attachment_content_type"
    t.string   "attachment_file_name"
    t.datetime "attachment_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["answer_sheet_id", "question_id"], name: "answer_sheet_question", using: :btree
  end

  create_table "fe_applications", force: :cascade do |t|
    t.integer  "applicant_id"
    t.string   "status"
    t.datetime "submitted_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "locale",       default: "en"
    t.index ["applicant_id"], name: "question_sheet_id", using: :btree
  end

  create_table "fe_conditions", force: :cascade do |t|
    t.integer  "question_sheet_id",             null: false
    t.integer  "trigger_id",                    null: false
    t.string   "expression",        limit: 255, null: false
    t.integer  "toggle_page_id",                null: false
    t.integer  "toggle_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["question_sheet_id"], name: "index_fe_conditions_on_question_sheet_id", using: :btree
    t.index ["toggle_id"], name: "index_fe_conditions_on_toggle_id", using: :btree
    t.index ["toggle_page_id"], name: "index_fe_conditions_on_toggle_page_id", using: :btree
    t.index ["trigger_id"], name: "index_fe_conditions_on_trigger_id", using: :btree
  end

  create_table "fe_elements", force: :cascade do |t|
    t.integer  "question_grid_id"
    t.string   "kind",                      limit: 40,                  null: false
    t.string   "style",                     limit: 40
    t.string   "label",                     limit: 255
    t.text     "content"
    t.boolean  "required"
    t.string   "slug",                      limit: 36
    t.integer  "position"
    t.string   "object_name"
    t.string   "attribute_name"
    t.string   "source"
    t.string   "value_xpath"
    t.string   "text_xpath"
    t.string   "cols"
    t.boolean  "is_confidential",                       default: false
    t.string   "total_cols"
    t.string   "css_id"
    t.string   "css_class"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "related_question_sheet_id"
    t.integer  "conditional_id"
    t.text     "tooltip"
    t.boolean  "hide_label",                            default: false
    t.boolean  "hide_option_labels",                    default: false
    t.integer  "max_length"
    t.string   "conditional_type"
    t.text     "conditional_answer"
    t.integer  "choice_field_id"
    t.text     "label_translations"
    t.text     "tip_translations"
    t.text     "content_translations"
    t.boolean  "share",                                 default: false
    t.index ["conditional_id"], name: "index_fe_elements_on_conditional_id", using: :btree
    t.index ["question_grid_id"], name: "index_fe_elements_on_question_grid_id", using: :btree
    t.index ["slug"], name: "index_fe_elements_on_slug", using: :btree
  end

  create_table "fe_email_templates", force: :cascade do |t|
    t.string   "name",       limit: 1000, null: false
    t.text     "content"
    t.boolean  "enabled"
    t.string   "subject"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fe_page_elements", force: :cascade do |t|
    t.integer  "page_id"
    t.integer  "element_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["page_id", "element_id"], name: "page_element", using: :btree
  end

  create_table "fe_pages", force: :cascade do |t|
    t.integer  "question_sheet_id",                             null: false
    t.string   "label",              limit: 60,                 null: false
    t.integer  "number"
    t.boolean  "no_cache",                      default: false
    t.boolean  "hidden",                        default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "all_element_ids"
    t.text     "label_translations"
  end

  create_table "fe_people", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "user_id"
    t.boolean  "is_staff"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fe_question_sheets", force: :cascade do |t|
    t.string   "label",      limit: 100,                 null: false
    t.boolean  "archived",               default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "languages"
  end

  create_table "fe_references", force: :cascade do |t|
    t.integer  "question_id"
    t.integer  "applicant_answer_sheet_id"
    t.datetime "email_sent_at"
    t.string   "relationship"
    t.string   "title"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone"
    t.string   "email"
    t.string   "status"
    t.datetime "submitted_at"
    t.datetime "started_at"
    t.string   "access_key"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "locale",                    default: "en"
    t.integer  "question_sheet_id"
    t.boolean  "visible"
    t.string   "visibility_cache_key"
    t.index ["applicant_answer_sheet_id"], name: "index_fe_references_on_applicant_answer_sheet_id", using: :btree
    t.index ["question_id"], name: "index_fe_references_on_question_id", using: :btree
  end

  create_table "fe_users", force: :cascade do |t|
    t.integer  "user_id"
    t.datetime "last_login"
    t.string   "type"
    t.string   "role"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phone_numbers", force: :cascade do |t|
    t.string   "number"
    t.string   "extensions"
    t.integer  "person_id"
    t.string   "location"
    t.boolean  "primary"
    t.string   "txt_to_email"
    t.integer  "carrier_id"
    t.datetime "email_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
