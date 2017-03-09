class Relationship < ActiveRecord::Base

  belongs_to :user
  belongs_to :followee, class_name: "User"

  validates :followee_id, :follower_id, presence: true
end
