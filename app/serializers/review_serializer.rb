class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :comment, :rating, :difficulty, :date
  belongs_to :user
  has_one :trail_id
end
