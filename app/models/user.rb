class User < ApplicationRecord
  has_secure_password

  after_create :create_corresponding_room
  after_destroy :destroy_corresponding_room

  has_many :friendships
  has_many :friends, through: :friendships, dependent: :destroy

  has_one :room
  has_many :letters, through: :room


  has_many :sent_notifications, :class_name => 'Notification', :foreign_key => 'sender_id'
  has_many :received_notifications, :class_name => 'Notification', :foreign_key => 'recipient_id'

  def send_friends
     self.friends.map do |friend|
       {username: friend[:username], id: friend[:id]}
     end
   end

   def create_corresponding_room
     Room.create(user_id: self.id)
   end

   def destroy_corresponding_room
     room = Room.find_by(user_id: self.id)
     room.destroy
   end

end
