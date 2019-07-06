class Tweet < ApplicationRecord
  mount_uploader :video, VideoUploader

  belongs_to :user
  has_many :comments


end
