class RestaurantList < ApplicationRecord
	belongs_to :list
	belongs_to :restaurant
end
