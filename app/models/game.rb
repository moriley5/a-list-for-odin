class Game < ActiveRecord::Base

  has_many :ownerships
  has_many :owners, through: :ownerships, source: :users
  has_many :game_ratings
  has_many :raters, through: :game_ratings, source: :users

  validates :title, :image, :thumbnail, :playing_time, :player_count_min, :player_count_max, presence: true

  def calculate_average_rating
    ratings_of_game = []
    self.game_ratings.each do |rating|
      ratings_of_game << rating.value
    end
    if ratings_of_game.length < 1
      @message = ["Be the first to rate this game"]
    else
      total = ratings_of_game.reduce(0, :+)
      average = total/ratings_of_game.length
    end
    return average
  end
end
