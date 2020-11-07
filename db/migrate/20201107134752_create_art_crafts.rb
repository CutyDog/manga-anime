class CreateArtCrafts < ActiveRecord::Migration[5.0]
  def change
    create_table :art_crafts do |t|
      t.string :title, null: false
      t.integer :type, null: false
      t.text :main_characters
      t.integer :genre

      t.timestamps
      
      t.index :title
      t.index :main_characters
      t.index :type
    end
  end
end
