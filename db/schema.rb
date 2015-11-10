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

ActiveRecord::Schema.define(version: 20151103202510) do

  create_table "bandas", force: :cascade do |t|
    t.string   "nombre"
    t.string   "genero"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "instrumentos", force: :cascade do |t|
    t.string   "nombre"
    t.string   "tipo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "musico_bandas", force: :cascade do |t|
    t.integer  "musico_id"
    t.integer  "banda_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "musico_bandas", ["banda_id"], name: "index_musico_bandas_on_banda_id"
  add_index "musico_bandas", ["musico_id"], name: "index_musico_bandas_on_musico_id"

  create_table "musicos", force: :cascade do |t|
    t.string   "nombre"
    t.string   "paterno"
    t.string   "materno"
    t.integer  "usuario_id"
    t.integer  "instrumento_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "musicos", ["instrumento_id"], name: "index_musicos_on_instrumento_id"
  add_index "musicos", ["usuario_id"], name: "index_musicos_on_usuario_id"

  create_table "posts", force: :cascade do |t|
    t.string   "titulo"
    t.text     "cuerpo"
    t.integer  "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "posts", ["usuario_id"], name: "index_posts_on_usuario_id"

  create_table "usuarios", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true

end
