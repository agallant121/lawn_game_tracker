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

ActiveRecord::Schema[7.1].define(version: 2025_05_12_171416) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "players", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role", default: 0
  end

  create_table "rankings", force: :cascade do |t|
    t.bigint "player_id", null: false
    t.bigint "game_id", null: false
    t.integer "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["game_id"], name: "index_rankings_on_game_id"
    t.index ["player_id"], name: "index_rankings_on_player_id"
  end

  create_table "teams", force: :cascade do |t|
    t.bigint "players_id", null: false
    t.bigint "games_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["games_id"], name: "index_teams_on_games_id"
    t.index ["players_id"], name: "index_teams_on_players_id"
  end

  add_foreign_key "rankings", "games"
  add_foreign_key "rankings", "players"
  add_foreign_key "teams", "games", column: "games_id"
  add_foreign_key "teams", "players", column: "players_id"
end
