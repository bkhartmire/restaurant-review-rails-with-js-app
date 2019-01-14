class Restaurant < ApplicationRecord
  has_many :reviews
  belongs_to :cuisine
  belongs_to :city
  has_many :visits
  has_many :users, through: :visits

  def average_rating
    if self.reviews.any?
      sum = 0
      self.reviews.each do |review|
        sum += review.rating
      end
      sum/(self.reviews.count.round(2))
    else
      0
    end
  end

end
