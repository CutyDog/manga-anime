class CreateFavoriteArtCrafts < ActiveRecord::Migration[5.0]
  def change
    create_table :favorite_art_crafts do |t|
      t.integer :user_id, null: false
      t.integer :art_craft_id, null: false

      t.timestamps
      
      t.index :user_id
      t.index :art_craft_id
    end
  end
end
