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

ActiveRecord::Schema.define(:version => 20121230234439) do

  create_table "documents", :force => true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "path"
    t.string   "mimeType"
    t.boolean  "public"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "documents_tasks", :id => false, :force => true do |t|
    t.integer "document_id"
    t.integer "task_id"
  end

  add_index "documents_tasks", ["task_id"], :name => "index_documents_tasks_on_task_id"

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "status"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "tasks", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "duedate"
    t.string   "status"
    t.integer  "project_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "tasks", ["project_id"], :name => "index_tasks_on_project_id"

  create_table "time_reports", :force => true do |t|
    t.datetime "started"
    t.datetime "stopped"
    t.integer  "task_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "time_reports", ["task_id"], :name => "index_time_reports_on_task_id"

  create_table "variables", :force => true do |t|
    t.string   "name"
    t.text     "value"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "wiki_pages", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "project_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "wiki_pages", ["project_id"], :name => "index_wiki_pages_on_project_id"

end
