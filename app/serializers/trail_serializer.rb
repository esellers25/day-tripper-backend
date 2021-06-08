class TrailSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :state, :difficulty, :length, :elevation_gain, :route_type, :latitude, :longitude
end
