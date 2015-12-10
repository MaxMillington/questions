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

ActiveRecord::Schema.define(version: 20151210223404) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "questions", force: :cascade do |t|
    t.float   "difficulty"
    t.integer "standard_id"
  end

  add_index "questions", ["standard_id"], name: "index_questions_on_standard_id", using: :btree

  create_table "quizzes", force: :cascade do |t|
    t.integer "size"
  end

  create_table "standards", force: :cascade do |t|
    t.string  "name"
    t.integer "strand_id"
  end

  add_index "standards", ["strand_id"], name: "index_standards_on_strand_id", using: :btree

  create_table "strands", force: :cascade do |t|
    t.string  "name"
    t.integer "standard_id"
  end

  add_foreign_key "questions", "standards"
  add_foreign_key "standards", "strands"
end
