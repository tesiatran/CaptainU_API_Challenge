class Tournament < ApplicationRecord
  has_many :events
  has_many :teams
end
