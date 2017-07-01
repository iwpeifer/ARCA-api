class CreateFriendships < ActiveRecord::Migration[5.1]
  def change
    create_table :friendships, :force => true do |t|
      t.references :user, index: true, foreign_key: true
      t.references :friend, index: true

      t.timestamps
    end

    add_foreign_key :friendships, :users, column: :friend_id
    add_index :friendships, [:user_id, :friend_id], unique: true
  end
end
