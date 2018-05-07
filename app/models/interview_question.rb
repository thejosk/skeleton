class InterviewQuestion < ApplicationRecord
  belongs_to :interview
  belongs_to :question

  #
  # Scopes
  #
  default_scope { order(:display_order) }


end
