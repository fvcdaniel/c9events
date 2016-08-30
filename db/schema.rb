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

ActiveRecord::Schema.define(:version => 20160822170256) do

  create_table "coords", :force => true do |t|
    t.string "nome"
  end

  create_table "eventos", :force => true do |t|
    t.string   "nome"
    t.text     "descricao"
    t.date     "data_ini"
    t.date     "data_fim"
    t.time     "hora"
    t.integer  "usuario_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "eventos_lugars", :id => false, :force => true do |t|
    t.integer "lugar_id"
    t.integer "evento_id"
  end

  create_table "eventos_servicos", :id => false, :force => true do |t|
    t.integer "servico_id"
    t.integer "evento_id"
  end

  create_table "lugars", :force => true do |t|
    t.string  "nome"
    t.integer "quantidade"
  end

  create_table "servicos", :force => true do |t|
    t.integer "tempo"
    t.string  "nome"
    t.integer "coord_id"
  end

  create_table "usuarios", :force => true do |t|
    t.string   "nome"
    t.string   "email"
    t.string   "matricula"
    t.boolean  "admin",      :default => false
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
  end

end
