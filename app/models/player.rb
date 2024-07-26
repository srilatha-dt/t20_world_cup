class Player < ApplicationRecord
    belongs_to :team

    enum role: [:allrounder, :bowler, :batsmen] 


    validates :name, presence: true , length: { minimum: 3, maximum: 15}
    validates :age, presence: true, numericality: { only_integer: true }
    validates :position, presence: true
    validates :team_id, presence: true
    validates :role, presence: true
    validates :is_captain, inclusion: { in: [true, false] }
    validates :is_active, inclusion: { in: [true, false] }
    validates :description, presence: true, length: {minimum: 10, maximum: 100}
    
    
  
  
  
  
  
end
