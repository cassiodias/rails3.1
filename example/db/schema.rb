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

ActiveRecord::Schema.define(:version => 20120216231122) do

  create_table "clients", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.integer  "age"
    t.string   "state"
    t.string   "password"
    t.boolean  "terms"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "developer_skills", :force => true do |t|
    t.integer  "developer_id"
    t.integer  "skill_id"
    t.integer  "level"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "developer_skills", ["developer_id"], :name => "index_developer_skills_on_developer_id"
  add_index "developer_skills", ["skill_id"], :name => "index_developer_skills_on_skill_id"

  create_table "developers", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "houses", :force => true do |t|
    t.string   "address"
    t.integer  "price"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "area"
  end

  create_table "order_items", :force => true do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.float    "price"
    t.float    "total"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "order_items", ["order_id"], :name => "index_order_items_on_order_id"
  add_index "order_items", ["product_id"], :name => "index_order_items_on_product_id"

  create_table "orders", :force => true do |t|
    t.integer  "client_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "orders", ["client_id"], :name => "index_orders_on_client_id"

  create_table "products", :force => true do |t|
    t.string   "name"
    t.float    "price"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.string   "client"
    t.date     "start"
    t.integer  "hours"
    t.text     "team"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "skills", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "pass"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
