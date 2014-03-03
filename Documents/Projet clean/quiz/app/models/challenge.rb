class Challenge < ActiveRecord::Base
  belongs_to :champion
  has_many :challenge_steps
end
