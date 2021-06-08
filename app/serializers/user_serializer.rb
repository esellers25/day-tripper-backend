class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest, :location, :profile_picture
end
