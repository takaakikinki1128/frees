class Star < ApplicationRecord
  belongs_to :tweet
  belongs_to :user

 validates :user_id, presence: true
 validates :tweet_id, presence: true
 validates_uniqueness_of :tweet_id, scope: :user_id
end
