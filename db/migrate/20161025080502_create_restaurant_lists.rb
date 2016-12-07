class CreateRestaurantLists < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurant_lists do |t|
      t.integer :list_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
