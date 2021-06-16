class ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :borrowed, :picture
end
