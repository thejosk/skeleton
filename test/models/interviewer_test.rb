require 'test_helper'

class InterviewerTest < ActiveSupport::TestCase
  def setup
      create_answers_and_ratings
    end

    test "interviewer has two upcoming interviews" do
      interviewer = interviewers(:warehouse)
      assert interviewer.upcoming_interviews.count == 2
    end

    test "upcoming interview information" do
      i = interviewers(:warehouse)
      assert JSON.parse(i.upcoming_interview_candidates)["upcoming_interviews"][0].keys == ["interview_date", "description", "candidate", "questions"]
    end
end
