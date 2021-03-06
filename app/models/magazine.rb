class Magazine < ApplicationRecord
	has_one_attached :image
	validates :title, presence: true, length: { minimum: 5, maximum: 50 }
    validates :description, presence: true, length: { minimum: 10, maximum: 1000 }
    belongs_to :user
    has_many :comments, dependent: :destroy  
    has_many :likes, dependent: :destroy
end
