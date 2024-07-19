class Player < ApplicationRecord
    validates :name, presence: true , length: { minimum: 3, maximum: 15}
    validates :description, presence: true, length: {minimum: 10, maximum: 100}
    belongs_to :team
    enum role: [:allrounder, :bowler, :batsmen] 
end
