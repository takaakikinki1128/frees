class AddClomunToStars < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :stars_count, :integer

  end
end
