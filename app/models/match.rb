class Match < ApplicationRecord
    has_many :home_teams, class_name: 'Team'
    has_many :away_teams, class_name: 'Team'
    has_many :players

    validates :date, presence: true
    validates :home_team_id, presence: true
    validates :away_team_id, presence: true
    validates :location, presence: true
    

    after_create do
        puts "Match created successfully"
    end

    scope :specific_team, -> (team) { where(team: team) }

    scope :matches_after, -> { where("date > ?", date.now) }

    scope :founded_after, ->(year1, year2) { where("year1 < ? < year2", year1,year2) } 
    
end
