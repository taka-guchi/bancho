class AddForeignKeyToGames < ActiveRecord::Migration[6.0]
  def change
    add_reference :games, :stadium, foreign_key: true
    add_reference :games, :home_team, foreign_key: { to_table: :teams }
    add_reference :games, :visitor_team, foreign_key: { to_table: :teams }
    add_reference :games, :win_team, foreign_key: { to_table: :teams }
  end
end
