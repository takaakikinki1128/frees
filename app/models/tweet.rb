class Tweet < ApplicationRecord
  mount_uploader :video, VideoUploader
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :comments


end
