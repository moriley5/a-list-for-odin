require 'rails_helper'

describe GameRating do
  let(:game_rating) {GameRating.new(rater_id: 1, game_id: 100, value: 4)}

  describe "validates" do
    it "has a valid rater_id" do
      game_rating.valid?
      expect(game_rating.errors[:rater_id]).to be_empty
    end
    it "has a valid game_id" do
      game_rating.valid?
      expect(game_rating.errors[:game_id]).to be_empty
    end
  end
end
