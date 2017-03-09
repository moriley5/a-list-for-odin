class User < ActiveRecord::Base

  has_many :ownerships, foreign_key: :owner_id
  has_many :games, through: :ownerships
  has_many :game_ratings, foreign_key: :rater_id
  has_many :rated_games, through: :game_ratings
  has_many :relationships
  has_many :followees, through: :relationships
  has_many :follower_relationships, class_name: "Relationship", foreign_key: :user_id
  has_many :followers, through: :follower_relationships, source: :user

  validates :email, :username, presence: true
  validates :email, :username, uniqueness: true

  has_secure_password

end
