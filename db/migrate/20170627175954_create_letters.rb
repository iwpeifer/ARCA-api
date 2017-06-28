class CreateLetters < ActiveRecord::Migration[5.1]
  def change
    create_table :letters do |t|
      t.integer :room_id
      t.string :item_type, :default => "letter"
      t.integer :x
      t.integer :y
      t.string :content
      t.string :image_url

      t.timestamps
    end
  end
end
