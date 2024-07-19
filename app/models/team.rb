class Team < ApplicationRecord
    validates :name, presence: true , length: { minimum: 3, maximum: 15}
    validates :description, presence: true, length: {minimum: 10, maximum: 100}
    has_many :players, class_name: "Player", foreign_key: "team_id"
end
