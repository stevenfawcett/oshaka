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

ActiveRecord::Schema.define(version: 20170704100808) do

  create_table "collaborations", force: :cascade do |t|
    t.integer "project_id" 
    t.integer "user_id" 
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_collaborations_on_user_id"
    t.index ["project_id"], name: "index_collaborations_on_project_id"
  end

  create_table "connections", force: :cascade do |t|
    t.string "name" , null: false
    t.string "username"
    t.string "apikey"
    t.string "apitoken"
    t.string "proxy_url"
    t.string "url"
    t.integer "port"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_connections_on_name", unique: true
  end

  create_table "projects", force: :cascade do |t|
    t.string "name" , null: false
    t.boolean "active"
    t.string "description"
    t.string "icon"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_projects_on_name", unique: true
  end

  create_table "tasks", force: :cascade do |t|
    t.string "name" , null: false
    t.integer "project_id"
    t.integer "connection_id"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["connection_id"], name: "index_tasks_on_connection_id"
    t.index ["project_id"], name: "index_tasks_on_project_id"
    t.index ["name"], name: "index_tasks_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "name" , null: false
    t.string "email"
    t.string "password_digest"
    t.string "remember_digest"
    t.boolean "admin", default: false
    t.string "activation_digest"
    t.boolean "activated", default: false
    t.datetime "activated_at"
    t.string "reset_digest"
    t.datetime "reset_sent_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
