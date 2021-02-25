class Assessment < ApplicationRecord
  belongs_to :users
  belongs_to :players
  has_many :assessments
end
