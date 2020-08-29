class CreateStadiums < ActiveRecord::Migration[6.0]
  def change
    create_table :stadiums do |t|
      t.string :full_name, null: false, comment: '球場名'
      t.string :short_name, null: false, comment: '球場名（略称）'
      t.timestamps
    end
  end
end
