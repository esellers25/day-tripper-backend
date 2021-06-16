class CreateTrails < ActiveRecord::Migration[6.1]
  def change
    create_table :trails do |t|
      t.string :name
      t.string :location
      t.string :state
      t.string :difficulty
      t.float :length
      t.integer :elevation_gain
      t.string :route_type
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
