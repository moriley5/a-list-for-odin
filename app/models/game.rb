class Game < ActiveRecord::Base

  has_many :ownerships
  has_many :owners, through: :ownerships, source: :users
  has_many :game_ratings
  has_many :raters, through: :game_ratings, source: :users

  validates :title, :image, :thumbnail, :playing_time, :player_count_min, :player_count_max, presence: true
end
