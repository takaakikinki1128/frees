class RemoveStarCountToTweets < ActiveRecord::Migration[5.2]
  def up
  end

  def down
    remove_column :tweets, :star_count, :string

  end
end
