class CreateLetters < ActiveRecord::Migration[5.1]
  def change
    create_table :letters do |t|
      t.integer :room_id
      t.string :originator
      t.string :item_type, :default => "letter"
      t.string :color, :default => "green"
      t.string :shape, :default => "square"
      t.integer :font_size, :default => 12
      t.string :font_family, :default => "sans-serif"
      t.string :link_url
      t.integer :x
      t.integer :y
      t.string :content
      t.string :image_url

      t.timestamps
    end
  end
end
