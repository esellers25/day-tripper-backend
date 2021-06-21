class ListSerializer < ActiveModel::Serializer
  attributes :id, :title, :user_id, :public
  has_many :trail_lists
end
