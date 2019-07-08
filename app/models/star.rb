class Star < ApplicationRecord
  belongs_to :tweet,counter_cache: :stars_count
  belongs_to :user

 validates :user_id, presence: true
 validates :tweet_id, presence: true
 validates_uniqueness_of :tweet_id, scope: :user_id
end
