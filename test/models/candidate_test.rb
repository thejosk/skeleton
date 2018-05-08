require 'test_helper.rb'

class CandidateTest < ActiveSupport::TestCase

  def setup
    create_answers_and_ratings
  end

  test "average rating for an answer" do
    candidate = candidates(:fred_flintstone)
    average_rating = candidate.answer_ratings.where.not(rating: 0).average(:rating).to_f
    assert candidate.average_rating.round(2) == average_rating.round(2)
  end

end