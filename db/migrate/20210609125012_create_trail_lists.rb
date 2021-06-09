class CreateTrailLists < ActiveRecord::Migration[6.1]
  def change
    create_table :trail_lists do |t|
      t.integer :list_id
      t.integer :trail_id

      t.timestamps
    end
  end
end
