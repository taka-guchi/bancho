class AddForeignKeyToTeams < ActiveRecord::Migration[6.0]
  def change
    add_reference :teams, :stadium, foreign_key: true
  end
end
