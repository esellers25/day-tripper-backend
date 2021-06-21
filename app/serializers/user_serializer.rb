class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :location, :profile_picture, :username, :bio 
  has_many :lists 
  # has_many :reviews 
end
