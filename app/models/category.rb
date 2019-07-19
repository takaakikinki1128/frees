class Category < ApplicationRecord
  belongs_to :tweet
  belongs_to :user
  def self.search(search)
    search ? where('name LIKE ?', "%#{search}%") : all
  end
end
