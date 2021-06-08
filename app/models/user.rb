class User < ApplicationRecord
    has_secure_password
    validates :username, uniqueness: true 
    validates :password, presence: true
end
