class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.datetime :game_at, null: false, comment: '試合日'
      t.string :score, null: false, comment: 'スコア'
      t.integer :spectators, null: false, comment: '観客動員数'
      t.timestamps
    end
  end
end
