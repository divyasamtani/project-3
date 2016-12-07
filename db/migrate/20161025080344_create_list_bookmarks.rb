class CreateListBookmarks < ActiveRecord::Migration[5.0]
  def change
    create_table :list_bookmarks do |t|
      t.integer :user_id
      t.integer :list_id

      t.timestamps
    end
  end
end
