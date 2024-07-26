# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_07_26_053714) do
  create_table "matches", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "location", null: false
    t.date "date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "team_id"
    t.index ["team_id"], name: "index_matches_on_team_id"
    t.index ["user_id"], name: "index_matches_on_user_id"
  end

  create_table "playeers", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "position"
    t.bigint "team_id", null: false
    t.string "role"
    t.boolean "is_captain"
    t.boolean "is_active"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_playeers_on_team_id"
  end

  create_table "players", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.integer "age", null: false
    t.string "position", null: false
    t.integer "user_id"
    t.boolean "is_captain", default: false, null: false
    t.boolean "is_active", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.bigint "user_id_id"
    t.bigint "team_id_id"
    t.text "descriptionn"
    t.string "role", null: false
    t.bigint "team_id", null: false
    t.index ["team_id"], name: "index_players_on_team_id"
    t.index ["team_id_id"], name: "index_players_on_team_id_id"
    t.index ["user_id_id"], name: "index_players_on_user_id_id"
  end

  create_table "teams", charset: "utf8mb4", collation: "utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.string "country", null: false
    t.integer "founded"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "player_count", default: 0
  end

  add_foreign_key "matches", "teams"
  add_foreign_key "playeers", "teams"
  add_foreign_key "players", "teams"
end
