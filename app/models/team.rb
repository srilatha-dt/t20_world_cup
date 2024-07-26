class Team < ApplicationRecord
    validates :name, presence: true , length: { minimum: 3, maximum: 15}
    
    has_many :players, class_name: "Player", foreign_key: "team_id"
end
