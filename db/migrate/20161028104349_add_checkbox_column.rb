class AddCheckboxColumn < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurant_lists, :checked, :boolean
  end
end
