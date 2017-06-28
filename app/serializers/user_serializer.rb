class UserSerializer < ActiveModel::Serializer
  attributes :id, :username

  has_one :room, include_nested_associations: true

end
