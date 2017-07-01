class LetterSerializer < ActiveModel::Serializer
  attributes :id, :item_type, :x, :y, :content, :image_url
end
