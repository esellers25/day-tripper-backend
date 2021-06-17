class TrailSerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :state, :difficulty, :length, :elevation_gain, :route_type, :latitude, :longitude
  has_many :reviews, if: :condition 
  has_many :photos
  
  def condition
    @instance_options[:flag] != "restrict"
  end 
end
