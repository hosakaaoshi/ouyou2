class Like < ApplicationRecord
  belongs_to :user
  belongs_to :favorite
  validates_uniqueness_of :favorite_id, scope: :user_id
end
