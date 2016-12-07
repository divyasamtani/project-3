class User < ActiveRecord::Base
	has_many :lists
	has_many :list_bookmarks, foreign_key: "user_id"
	has_many :bookmarks, through: :list_bookmarks, source: :list

  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :trackable, :validatable,
          :omniauthable
  include DeviseTokenAuth::Concerns::User
end
