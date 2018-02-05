class Review < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  validates :rating, presence: true
  validates :content, length: {in: 15..500, message: "Review must be in betweeen 15 and 500 characters."}

end
