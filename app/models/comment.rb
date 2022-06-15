class Comment < ApplicationRecord
  belongs_to :magazine
  belongs_to :user
  has_rich_text :body
end
