class PhotoSerializer < ActiveModel::Serializer
  attributes :id, :title, :img_link, :date, :user_id, :trail_id
end
