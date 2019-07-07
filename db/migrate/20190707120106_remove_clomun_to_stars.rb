class RemoveClomunToStars < ActiveRecord::Migration[5.2]
  def up
  end

  def down
    remove_column :tweets, :stars_count, :integer
  end
end
