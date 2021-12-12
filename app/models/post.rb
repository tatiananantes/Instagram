class Post < ApplicationRecord
  validates :caption, presence: true
  validates :image, presence: true
  
  has_one_attached :image
  # def image_presence
  #   errors.add(:image, "can't be blank") unless image.attached?
  # end
end
