class Game < ApplicationRecord
  belongs_to :user
  validates_presence_of :category
  validates_presence_of :num_questions
  validates_presence_of :correct

end
