class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :rating, :difficulty, :date
  has_one :user_id
  has_one :trail_id
end
