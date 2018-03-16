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

ActiveRecord::Schema.define(version: 20180316023248) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "families", force: :cascade do |t|
    t.string "name"
    t.integer "nb_of_members"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "family_pockets", force: :cascade do |t|
    t.bigint "family_id"
    t.bigint "pocket_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["family_id"], name: "index_family_pockets_on_family_id"
    t.index ["pocket_id"], name: "index_family_pockets_on_pocket_id"
  end

  create_table "members", force: :cascade do |t|
    t.string "fisrt_name"
    t.string "last_name"
    t.string "birthday"
    t.boolean "sexe"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "membres", force: :cascade do |t|
    t.string "fisrt_name"
    t.string "last_name"
    t.string "birthday"
    t.boolean "sexe"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pockets", force: :cascade do |t|
    t.string "name"
    t.float "credit"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "accessible"
  end

  create_table "user_families", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "family_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["family_id"], name: "index_user_families_on_family_id"
    t.index ["user_id"], name: "index_user_families_on_user_id"
  end

  create_table "user_members", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "members_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["members_id"], name: "index_user_members_on_members_id"
    t.index ["user_id"], name: "index_user_members_on_user_id"
  end

  create_table "user_membres", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "membre_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["membre_id"], name: "index_user_membres_on_membre_id"
    t.index ["user_id"], name: "index_user_membres_on_user_id"
  end

  create_table "user_pockets", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "pocket_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pocket_id"], name: "index_user_pockets_on_pocket_id"
    t.index ["user_id"], name: "index_user_pockets_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "last_name"
    t.string "first_name"
    t.boolean "adult"
    t.string "phone_numbre"
    t.string "mail"
    t.string "birthday"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "family_pockets", "families"
  add_foreign_key "family_pockets", "pockets"
  add_foreign_key "user_families", "users"
  add_foreign_key "user_members", "members", column: "members_id"
  add_foreign_key "user_members", "users"
  add_foreign_key "user_membres", "membres"
  add_foreign_key "user_membres", "users"
  add_foreign_key "user_pockets", "pockets"
  add_foreign_key "user_pockets", "users"
end
