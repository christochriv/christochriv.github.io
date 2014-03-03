class Question < ActiveRecord::Base
  has_many :challenge_steps
  has_one :choices, class_name: "Answer"
end
