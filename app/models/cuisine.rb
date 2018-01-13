class Cuisine < ApplicationRecord
  has_many :restaurants
  has_many :cities, through: :restaurants
end
