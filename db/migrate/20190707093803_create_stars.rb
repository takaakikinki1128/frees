class CreateStars < ActiveRecord::Migration[5.2]
  def change
    create_table :stars do |t|
      t.references :tweet
      t.references :user
      t.timestamps
    end
  end
end
