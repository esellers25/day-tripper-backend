class TrailListSerializer < ActiveModel::Serializer
  attributes :id, :list_id, :trail_id
  # belongs_to :trail 
end
