class Player < ApplicationRecord
  belongs_to :teams
  has_many :assessments
  has_many :notes
end
