class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.boolean :borrowed
      t.string :picture
      t.integer :user_id 

      t.timestamps
    end
  end
end
