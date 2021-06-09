class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.string :title
      t.string :img_link
      t.date :date
      t.integer :user_id
      t.integer :trail_id

      t.timestamps
    end
  end
end
