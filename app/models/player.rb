class Player < ApplicationRecord
    belongs_to :team
    enum role: [:allrounder, :bowler, :batsmen] 
end
