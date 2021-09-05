class Book < ApplicationRecord
	belongs_to :user

	validates :title, presence: true, uniqueness: true
	validates :body, presence: true, length: {minimum: 1, maximum: 200}
end
