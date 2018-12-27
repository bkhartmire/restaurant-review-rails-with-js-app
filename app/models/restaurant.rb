class Restaurant < ApplicationRecord
  has_many :reviews
  has_many :users
  #has_many :users, through: :reviews
  belongs_to :cuisine
  belongs_to :city
  has_many :restaurants, through: :user_restaurants

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


  def cuisine_name=(name)
    self.cuisine = Cuisine.find_or_create_by(name: name)
  end

  def cuisine_name
    self.cuisine.name if self.cuisine
  end

  def city_name=(name)
    self.city = City.find_or_create_by(name: name)
  end

  def city_name
    self.city.name if self.city
  end
end
