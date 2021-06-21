class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.string :title
      t.boolean :public, :default => true 
      t.integer :user_id

      t.timestamps
    end
  end
end
