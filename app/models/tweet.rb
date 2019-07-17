class Tweet < ApplicationRecord
  mount_uploader :video, VideoUploader
  mount_uploader :image, ImageUploader
  belongs_to :user
  has_many :comments
  has_many :stars, dependent: :destroy

  validates :name,presence: true,
  length: {maximum: 10}
  validates :text,presence: true,
  length: {maximum: 20}

  def star_user(user_id)
    stars.find_by(user_id: user_id)
  end

end
