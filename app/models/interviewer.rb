class Interviewer < ApplicationRecord
  has_many :answer_ratings
  has_many :interviews

  def upcoming_interview_schedule
    upcoming_interviews = interviews.where('interview_date >= ?', DateTime.now).order(:interview_date).first(2)
    upcoming_interviews.each do |i|
      puts "Candidate Information :"
      puts "Name : #{i.candidate.name}"
      puts "Email : #{i.candidate.email}"
      puts "Phone : #{i.candidate.phone}"
      puts "Interview Date : #{i.interview_date}"
      puts "\n"
      puts "List of Questions :"
      i.questions.each do |q|
        puts "#{q.question}"
      end
      puts "\n\n"
    end
  end

end