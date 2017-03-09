require 'rails_helper'

describe Ownership do
  let(:ownership) {Ownership.new(owner_id: 1, game_id: 100)}

  describe "validates" do
    it "has a valid owner_id" do
      ownership.valid?
      expect(ownership.errors[:owner_id]).to be_empty
    end
    it "has a valid game_id" do
      ownership.valid?
      expect(ownership.errors[:game_id]).to be_empty
    end
  end
end
