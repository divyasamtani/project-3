class List < ApplicationRecord
	belongs_to :user
	has_many :list_bookmarks, foreign_key: "list_id"
	has_many :followers, through: :list_bookmarks, source: :user
	has_many :restaurant_lists, foreign_key: "list_id"
	has_many :restaurants, through: :restaurant_lists
end
