class Restaurant < ApplicationRecord
  has_many :reviews
  belongs_to :cuisine
  belongs_to :city
  has_many :visits
  has_many :users, through: :visits

  validates :name, presence: true
  validates :city_name, presence: true
  validates :cuisine_name, presence: true

  def self.five_stars
    self.all.select {|restaurant| restaurant.average_rating == 5.0 }
  end

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

  def country
    self.city.country
  end
end
