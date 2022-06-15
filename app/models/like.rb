class Like < ApplicationRecord
  validates :user_id, uniqueness: { scope: :magazine_id}
  belongs_to :user
  belongs_to :magazine
end
