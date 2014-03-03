class ChallengeStep < ActiveRecord::Base
  belongs_to :challenge
  belongs_to :question
  belongs_to :answerer
end
