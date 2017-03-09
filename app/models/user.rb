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

  include BCrypt

  def self.authenticate(args)
    user = User.find_by(username: args[:username])
    if user
      return user if user.password == args[:password]
    else
      nil
    end
  end

  def password
    @password ||= Password.new(hashed_password)
  end

  def password=(new_password)
    @password = Password.create(new_password)
    self.hashed_password = @password
  end

  def has_rated(game_id)
    game_rating = GameRating.find_by(game_id: game_id, rater_id: self.id)
    if game_rating
      return true
    else
      return false
    end
  end

end
