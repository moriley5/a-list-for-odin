class Ownership < ActiveRecord::Base

  belongs_to :user, foreign_key: :owner_id
  belongs_to :game

  validates :owner_id, :game_id, presence: true

end
