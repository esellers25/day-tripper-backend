class User < ApplicationRecord
    has_secure_password
    has_many :reviews 
    has_many :trails, through: :reviews 
    has_many :photos 
    has_many :trails, through: :photos
    has_many :lists 
    has_many :items 
    validates :username, uniqueness: true 
end
