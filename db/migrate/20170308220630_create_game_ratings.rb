class CreateGameRatings < ActiveRecord::Migration
  def change
    create_table :game_ratings do |t|
      t.integer :rater_id, null: false
      t.integer :game_id, null: false
      t.integer :value, null: false
      t.timestamps(null: false)
    end
  end
end
