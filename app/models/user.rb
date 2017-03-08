class User < ActiveRecord::Base

  has_many :ownerships
  has_many :games, through: :ownerships
  has_many :game_ratings, foreign_key: :rater_id
  has_many :rated_games, through: :game_ratings
  has_many :relationships
  has_many :followers, through: :relationships
  has_many :followees, through: :relationships

  validates :email, :username, :password_digest, presence: true
  validates :email, :username, uniqueness: true

  has_secure_password

end
