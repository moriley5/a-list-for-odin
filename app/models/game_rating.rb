class GameRating < ActiveRecord::Base

  belongs_to :user, foreign_key: :rater_id
  belongs_to :game

  validates :rater_id, :game_id, presence: true
end
