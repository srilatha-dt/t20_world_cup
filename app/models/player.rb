class Player < ApplicationRecord
    belongs_to :team
    has_many :matches

    # default_scope { where(active: true) }
    default_scope {where(:is_active => true)}
    
    

    enum role: [:allrounder, :bowler, :batsman] 


    validates :name, presence: true , length: { minimum: 3, maximum: 15}
    validates :age, presence: true, numericality: { only_integer: true }
    validates :position, presence: true
    validates :team_id, presence: true
    validates :role, presence: true
    validates :is_captain, inclusion: { in: [true, false] }
    validates :is_active, inclusion: { in: [true, false] }
    validates :description, presence: true, length: {minimum: 10, maximum: 100}
    

    before_destroy  :prevent_captain_destroy

    def prevent_captain_destroy
        if self.is_captain?
            errors.add(:base, "Cannot delete captain")
            throw :abort
        end
    end

    
  
  
  
  
  
end
