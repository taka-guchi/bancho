class AddForeignKeyToGameDetails < ActiveRecord::Migration[6.0]
  def change
    add_reference :game_details, :game, foreign_key: true, index: false
    add_reference :game_details, :team, foreign_key: true, index: false
    add_index :game_details, [:game_id, :team_id], unique: true
  end
end
