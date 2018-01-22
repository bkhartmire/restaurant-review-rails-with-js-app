class Restaurant < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews
  belongs_to :cuisine
  belongs_to :city

  validates :name, presence: true, message: "Restaurant must have a name."
  validates :city_name, presence: true, message: "Restaurant must have a city."
  validates :cuisine_name, presence: true, message: "Restaurant must have a cuisine."


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
