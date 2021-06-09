class ListSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id
  has_many :trail_lists
end
