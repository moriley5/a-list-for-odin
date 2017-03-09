require 'rails_helper'

describe Relationship do
  let(:relationship) {Relationship.new(user_id: 1, followee_id: 10)}

  describe "validates" do
    it "has a valid user_id" do
      relationship.valid?
      expect(relationship.errors[:user_id]).to be_empty
    end
    it "has a valid followee_id" do
      relationship.valid?
      expect(relationship.errors[:followee_id]).to be_empty
    end
  end
end
