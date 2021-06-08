class CreateTrails < ActiveRecord::Migration[6.1]
  def change
    create_table :trails do |t|
      t.string :name
      t.string :location
      t.string :state
      t.string :difficulty
      t.integer :length
      t.integer :elevation_gain
      t.string :route_type
      t.integer :latitude
      t.integer :longitude

      t.timestamps
    end
  end
end
