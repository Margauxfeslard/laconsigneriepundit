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

ActiveRecord::Schema.define(version: 2019_06_11_112730) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bieres", force: :cascade do |t|
    t.string "nom"
    t.string "logo_img"
    t.text "description"
    t.string "style"
    t.string "couleur"
    t.float "taux_alcool"
    t.bigint "brasserie_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "amertume"
    t.string "apparence"
    t.integer "price_cents", default: 0, null: false
    t.index ["brasserie_id"], name: "index_bieres_on_brasserie_id"
  end

  create_table "brasseries", force: :cascade do |t|
    t.string "nom"
    t.string "adresse"
    t.string "logo_img"
    t.text "description"
    t.string "photo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "commandeitems", force: :cascade do |t|
    t.integer "quantite"
    t.bigint "commande_id"
    t.string "item_type"
    t.bigint "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price_cents", default: 0, null: false
    t.index ["commande_id"], name: "index_commandeitems_on_commande_id"
    t.index ["item_type", "item_id"], name: "index_commandeitems_on_item_type_and_item_id"
  end

  create_table "commandes", force: :cascade do |t|
    t.integer "etat"
    t.date "date_souhaitee"
    t.bigint "pointcollecte_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "item_sku"
    t.integer "amount_cents", default: 0, null: false
    t.json "payment"
    t.index ["pointcollecte_id"], name: "index_commandes_on_pointcollecte_id"
    t.index ["user_id"], name: "index_commandes_on_user_id"
  end

  create_table "growlers", force: :cascade do |t|
    t.integer "capacite"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price_cents", default: 0, null: false
  end

  create_table "pointcollectes", force: :cascade do |t|
    t.string "nom"
    t.text "horaire"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float "latitude"
    t.float "longitude"
    t.string "ville"
    t.integer "zipcode"
    t.string "adresse"
    t.string "full_address"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "contenu"
    t.integer "note"
    t.bigint "user_id"
    t.bigint "biere_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["biere_id"], name: "index_reviews_on_biere_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nom"
    t.string "prenom"
    t.string "adresse"
    t.integer "zipcode"
    t.string "ville"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bieres", "brasseries", column: "brasserie_id"
  add_foreign_key "commandeitems", "commandes"
  add_foreign_key "commandes", "pointcollectes"
  add_foreign_key "commandes", "users"
  add_foreign_key "reviews", "bieres"
  add_foreign_key "reviews", "users"
end
