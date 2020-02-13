# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_02_09_180556) do

  create_table "addresses", force: :cascade do |t|
    t.string "description"
    t.integer "player_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["player_id"], name: "index_addresses_on_player_id"
  end

  create_table "cards", force: :cascade do |t|
    t.integer "game_id", null: false
    t.integer "player_id", null: false
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_cards_on_game_id"
    t.index ["player_id"], name: "index_cards_on_player_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "game_types", force: :cascade do |t|
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "games", force: :cascade do |t|
    t.integer "client_id", null: false
    t.string "description"
    t.integer "status_id", null: false
    t.datetime "start"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "game_type_id"
    t.integer "team_id"
    t.index ["client_id"], name: "index_games_on_client_id"
    t.index ["status_id"], name: "index_games_on_status_id"
  end

  create_table "games_teams", id: false, force: :cascade do |t|
    t.integer "game_id", null: false
    t.integer "team_id", null: false
  end

  create_table "participants", force: :cascade do |t|
    t.integer "game_id", null: false
    t.integer "team_id", null: false
    t.integer "field"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_participants_on_game_id"
    t.index ["team_id"], name: "index_participants_on_team_id"
  end

  create_table "picks", force: :cascade do |t|
    t.integer "selection_id", null: false
    t.integer "player_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["player_id"], name: "index_picks_on_player_id"
    t.index ["selection_id"], name: "index_picks_on_selection_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "questions", force: :cascade do |t|
    t.integer "game_id", null: false
    t.text "description"
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_questions_on_game_id"
  end

  create_table "roles", force: :cascade do |t|
    t.integer "player_id", null: false
    t.integer "team_id", null: false
    t.index ["player_id"], name: "index_roles_on_player_id"
    t.index ["team_id"], name: "index_roles_on_team_id"
  end

  create_table "selections", force: :cascade do |t|
    t.integer "question_id", null: false
    t.string "description"
    t.string "text"
    t.integer "status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_selections_on_question_id"
  end

  create_table "statuses", force: :cascade do |t|
    t.string "description"
    t.integer "rank"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sweeps", force: :cascade do |t|
    t.integer "game_id", null: false
    t.integer "player_id", null: false
    t.integer "is_winner"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["game_id"], name: "index_sweeps_on_game_id"
    t.index ["player_id"], name: "index_sweeps_on_player_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.string "abbreviation"
    t.string "logo_path"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "addresses", "players"
  add_foreign_key "cards", "games"
  add_foreign_key "cards", "players"
  add_foreign_key "games", "clients"
  add_foreign_key "games", "statuses"
  add_foreign_key "participants", "games"
  add_foreign_key "participants", "teams"
  add_foreign_key "picks", "players"
  add_foreign_key "picks", "selections"
  add_foreign_key "questions", "games"
  add_foreign_key "roles", "players"
  add_foreign_key "roles", "teams"
  add_foreign_key "selections", "questions"
  add_foreign_key "sweeps", "games"
  add_foreign_key "sweeps", "players"
end
