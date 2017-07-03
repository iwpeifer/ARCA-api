class UserSerializer < ActiveModel::Serializer
  attributes :id, :username
  # has_one :room
  has_many :friends
end
