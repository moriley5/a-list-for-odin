class CreateOwnerships < ActiveRecord::Migration
  def change
    create_table :ownerships do |t|
      t.integer :game_id, null: false
      t.integer :owner_id, null: false
      t.timestamps(null: false)
    end
  end
end
