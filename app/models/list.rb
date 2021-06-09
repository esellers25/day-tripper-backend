class List < ApplicationRecord
    belongs_to :user 
    has_many :trail_lists
    has_many :trails, through: :trail_lists
end
