class Team < ApplicationRecord
  belongs_to :stadium
  has_many :games
end
