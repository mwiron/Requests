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

ActiveRecord::Schema.define(:version => 20120914080716) do

  create_table "requests", :force => true do |t|
    t.string   "request_nr"
    t.string   "request_version"
    t.integer  "task_id"
    t.string   "request_beschreibung"
    t.string   "itsg_fachlich"
    t.string   "itsg_teschnisch"
    t.string   "gkv_fachlich"
    t.string   "gkv_technisch"
    t.string   "teradata_fachlich"
    t.string   "teradata_technisch"
    t.string   "kostenstelle"
    t.string   "sonderstatus"
    t.date     "analyse_und_design"
    t.date     "fachl_freigabe_implementierung"
    t.date     "abnahme_teradata"
    t.date     "abnahme_fachlich_gkv"
    t.date     "abnahme_technisch_itsg"
    t.date     "migration_produktion"
    t.date     "ziel_migration"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  add_index "requests", ["task_id"], :name => "index_requests_on_task_id"

  create_table "tasks", :force => true do |t|
    t.string   "task_nr"
    t.string   "task_beschreibung"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

end
