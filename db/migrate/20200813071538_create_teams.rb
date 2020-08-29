class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :full_name, null: false, comment: 'チーム名'
      t.string :short_name, null: false, comment: 'チーム名（略称）'
      t.timestamps
    end
  end
end
inflect.irregular 'stadium', 'stadiums'
