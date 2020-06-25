class Tweet < ApplicationRecord
  validates :name, presence: true
  validates :name, length: { maximum: 30 }
  mount_uploader :image, ImageUploader
end
