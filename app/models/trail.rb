class Trail < ApplicationRecord
    has_many :reviews 
    has_many :users, through: :reviews 
    has_many :photos 
    has_many :users, through: :photos
    has_many :trail_lists
    has_many :lists, through: :trail_lists

   
end
