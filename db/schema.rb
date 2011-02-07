# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110207165751) do

  create_table "saved_tapes", :force => true do |t|
    t.string   "voltag"
    t.string   "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user"
  end

  create_table "tapes", :force => true do |t|
    t.string   "bsid"
    t.string   "server"
    t.integer  "backupstamp"
    t.string   "bformat"
    t.string   "btype"
    t.string   "broot"
    t.string   "tapelabel"
    t.string   "voltag"
    t.integer  "size",        :limit => 8
    t.string   "rev"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "note"
    t.string   "bclient"
    t.integer  "testcase"
    t.boolean  "selected"
    t.integer  "bug"
    t.string   "servertype"
  end

  create_table "transforms", :force => true do |t|
    t.string  "server"
    t.string  "server_t"
    t.integer "bformat"
    t.string  "bformat_t"
    t.integer "bclient"
    t.string  "bclient_t"
    t.integer "btype"
    t.string  "btype_t"
    t.integer "battr"
    t.string  "battr_t"
  end

  create_table "users", :force => true do |t|
    t.string   "user_name"
    t.string   "password"
    t.integer  "role"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "firstname"
  end

end
