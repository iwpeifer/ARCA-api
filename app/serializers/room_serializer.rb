class RoomSerializer < ActiveModel::Serializer
  attributes :id, :letters

  has_many :letters
end
