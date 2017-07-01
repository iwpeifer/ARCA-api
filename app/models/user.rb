class User < ApplicationRecord
  has_secure_password
  has_many :friendships
  has_many :friends, through: :friendships, dependent: :destroy

  has_one :room
  has_many :letters, through: :room


  has_many :sent_notifications, :class_name => 'Notification', :foreign_key => 'sender_id'
  has_many :received_notifications, :class_name => 'Notification', :foreign_key => 'recipient_id'

  def send_friends
     self.friends.map do |friend|
       friend[:id]
     end
   end

end
