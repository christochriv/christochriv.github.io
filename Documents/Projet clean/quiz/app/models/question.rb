class Question < ActiveRecord::Base
  has_many :challenge_steps
  has_many :answers
end
