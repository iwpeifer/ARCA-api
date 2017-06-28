class User < ApplicationRecord
  has_secure_password

  has_one :room
  has_many :letters, through: :room
  has_and_belongs_to_many(:users,
    :join_table => "friendships",
    :foreign_key => "user1_id",
    :association_foreign_key => "user2_id")
end
