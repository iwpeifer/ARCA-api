class LetterSerializer < ActiveModel::Serializer
  attributes :id, :color, :shape, :item_type, :x, :y, :content, :image_url, :font_family, :font_size, :link_url, :originator
end
