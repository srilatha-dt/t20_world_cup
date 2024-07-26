class Team < ApplicationRecord
    validates :name, presence: true , length: { minimum: 3, maximum: 15}
    validates :country, presence: true 
    validates :founded, presence: true
     


    
    has_many :players, class_name: "Player", foreign_key: "team_id", dependent: :destroy
    has_many :home_matches, class_name: 'Match', foreign_key: 'home_team_id'
    has_many :away_matches, class_name: 'Match', foreign_key: 'away_team_id'

    scope :same_country, -> (country) { where(country: country) }
    
    scope :founded_after, ->(year) { where("founded > ?", year) } 
    
end
