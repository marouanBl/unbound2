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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130216205914) do

  create_table "articles", :force => true do |t|
    t.string   "title"
    t.text     "content"
    t.boolean  "is_draft"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "users_id"
    t.integer  "categories_id"
  end

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",      :null => false
    t.integer  "parent_category"
    t.datetime "updated_at",      :null => false
  end

  create_table "continents", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "countries", :force => true do |t|
    t.string   "name"
    t.integer  "continents_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "credibilities", :force => true do |t|
    t.boolean  "confirm"
    t.datetime "created_at",  :null => false
    t.integer  "articles_id"
    t.datetime "updated_at",  :null => false
  end

  create_table "issues", :force => true do |t|
    t.integer  "number"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.datetime "published_at"
    t.integer  "journals_id"
  end

  create_table "journals", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.integer  "users_id"
    t.integer  "categories_id"
  end

  create_table "pages", :force => true do |t|
    t.integer  "number"
    t.integer  "pos1"
    t.integer  "pos2"
    t.integer  "pos3"
    t.integer  "pos4"
    t.integer  "pos5"
    t.integer  "pos6"
    t.integer  "pos7"
    t.integer  "pos8"
    t.integer  "pos9"
    t.integer  "pos10"
    t.integer  "pos11"
    t.integer  "pos12"
    t.integer  "pos13"
    t.integer  "pos14"
    t.integer  "pos15"
    t.integer  "pos16"
    t.integer  "issues_id"
    t.integer  "issues_journals_id"
    t.integer  "templates_id"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "pages_has_articles", :force => true do |t|
    t.integer  "pages_id"
    t.integer  "pages_issues_id"
    t.integer  "pages_issues_journals_id"
    t.integer  "pages_templates_id"
    t.integer  "articles_id"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
  end

  create_table "states", :force => true do |t|
    t.string   "name"
    t.integer  "countries_id"
    t.integer  "continents_id"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "templates", :force => true do |t|
    t.string   "name"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "users_id"
  end

  create_table "user_has_credibilities", :force => true do |t|
    t.integer  "users_id"
    t.integer  "credibility_id"
    t.integer  "credibility_articles_id"
    t.datetime "created_at",              :null => false
    t.datetime "updated_at",              :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "username"
    t.string   "last_name"
    t.string   "name"
    t.integer  "states_id"
    t.integer  "states_countries_id"
    t.integer  "states_continents_id"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

end
