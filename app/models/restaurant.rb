class Restaurant < ApplicationRecord
	has_many :restaurant_lists
	has_many :lists, through: :restaurant_lists

	validates :name, presence: true, length: {minimum: 20}
end
