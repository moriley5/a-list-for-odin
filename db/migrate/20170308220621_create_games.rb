class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title, null: false
      t.string :image, null: false
      t.string :thumbnail, null: false
      t.integer :playing_time, null: false
      t.integer :player_count_min, null: false
      t.integer :player_count_max, null: false
      t.timestamps(null: false)
    end
  end
end
