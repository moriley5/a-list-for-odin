class Relationship < ActiveRecord::Base

  belongs_to :user, foreign_key: :follower_id
  belongs_to :user, foreign_key: :followee_id

  validates :followee_id, :follower_id, presence: true
end
