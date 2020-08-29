class CreateGameDetails < ActiveRecord::Migration[6.0]
  def change
    create_table :game_details do |t|
      t.integer :ranking, null: false, comment: '順位'
      t.integer :savings, null: false, comment: '貯金'
      t.string :starter, comment: '先発投手'
      t.string :finalist, comment: '決勝者'
      t.string :final_hit, comment: '決勝打'
      t.string :pitcher, comment: '勝/負投手'
      t.integer :hits, null: false, comment: '安打数'
      t.integer :home_runs, null: false, comment: '本塁打数'
      t.integer :stolen_bases, null: false, comment: '盗塁数'
      t.integer :strike_outs, null: false, comment: '三振数'
      t.integer :allowed_runs, null: false, comment: '失点数'
      t.integer :earned_runs, null: false, comment: '自責点'
      t.timestamps
    end
  end
end
