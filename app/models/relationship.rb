class Relationship < ActiveRecord::Base

  belongs_to :user
  belongs_to :followee, class_name: "User"

  validates :followee_id, :user_id, presence: true
end
