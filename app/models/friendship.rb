class Friendship < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: "User"

  # after_create :create_inverse, unless: :has_inverse?
  after_destroy :destroy_inverse, if: :has_inverse?

  def inverse_friendship
    { friend_id: user_id, user_id: friend_id, status: 'accepted' }
  end

  def inverses
    self.class.where(inverse_friendship)
  end

  def has_inverse?
    self.class.exists?(inverse_friendship)
  end

  def create_inverse
    self.class.create(inverse_friendship)
  end

  def destroy_inverses
    inverses.destroy_all
  end

end
