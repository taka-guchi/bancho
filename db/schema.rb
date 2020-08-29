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

ActiveRecord::Schema.define(version: 2020_08_29_084750) do

  create_table "game_details", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.integer "ranking", null: false, comment: "順位"
    t.integer "savings", null: false, comment: "貯金"
    t.string "starter", comment: "先発投手"
    t.string "finalist", comment: "決勝者"
    t.string "final_hit", comment: "決勝打"
    t.string "pitcher", comment: "勝/負投手"
    t.integer "hits", null: false, comment: "安打数"
    t.integer "home_runs", null: false, comment: "本塁打数"
    t.integer "stolen_bases", null: false, comment: "盗塁数"
    t.integer "strike_outs", null: false, comment: "三振数"
    t.integer "allowed_runs", null: false, comment: "失点数"
    t.integer "earned_runs", null: false, comment: "自責点"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "game_id"
    t.bigint "team_id"
    t.index ["game_id", "team_id"], name: "index_game_details_on_game_id_and_team_id", unique: true
    t.index ["team_id"], name: "fk_rails_2652e62f1d"
  end

  create_table "games", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.datetime "game_at", null: false, comment: "試合日"
    t.string "score", null: false, comment: "スコア"
    t.integer "spectators", null: false, comment: "観客動員数"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "stadium_id"
    t.bigint "home_team_id"
    t.bigint "visitor_team_id"
    t.bigint "win_team_id"
    t.index ["home_team_id"], name: "index_games_on_home_team_id"
    t.index ["stadium_id"], name: "index_games_on_stadium_id"
    t.index ["visitor_team_id"], name: "index_games_on_visitor_team_id"
    t.index ["win_team_id"], name: "index_games_on_win_team_id"
  end

  create_table "stadiums", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "full_name", null: false, comment: "球場名"
    t.string "short_name", null: false, comment: "球場名（略称）"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "teams", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4", force: :cascade do |t|
    t.string "full_name", null: false, comment: "チーム名"
    t.string "short_name", null: false, comment: "チーム名（略称）"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "stadium_id"
    t.index ["stadium_id"], name: "index_teams_on_stadium_id"
  end

  add_foreign_key "game_details", "games"
  add_foreign_key "game_details", "teams"
  add_foreign_key "games", "stadiums"
  add_foreign_key "games", "teams", column: "home_team_id"
  add_foreign_key "games", "teams", column: "visitor_team_id"
  add_foreign_key "games", "teams", column: "win_team_id"
  add_foreign_key "teams", "stadiums"
end
