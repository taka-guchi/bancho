class Game < ApplicationRecord
  belongs_to :stadium
  belongs_to :home_team, class_name: 'Team'
  belongs_to :visitor_team, class_name: 'Team'
  belongs_to :win_team, class_name: 'Team'
  has_many :game_details
end
