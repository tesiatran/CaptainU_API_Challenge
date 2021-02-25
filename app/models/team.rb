class Team < ApplicationRecord
  belongs_to :tournaments
  has_many :players
end
