class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.integer :user_id, null: false
      t.integer :art_craft_id, null: false
      t.text :content, null: false

      t.timestamps
      
      t.index :art_craft_id
    end
  end
end
