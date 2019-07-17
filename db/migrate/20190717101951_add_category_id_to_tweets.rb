class AddCategoryIdToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :category_id, :integer
  end
end
