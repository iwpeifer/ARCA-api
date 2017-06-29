class CreateNotifications < ActiveRecord::Migration[5.1]
  def change
    create_table :notifications do |t|
      t.references :sender
      t.references :recipient
      t.integer :item_id
      t.boolean :gift_received?
      t.boolean :friend_request?
      t.timestamps
    end
  end
end
