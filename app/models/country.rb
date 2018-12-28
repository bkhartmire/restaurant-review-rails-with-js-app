class Country < ApplicationRecord
  has_many :cities
  has_many :restaurants, through: :cities
  #I think you can delete this relationship? country doesn't need to have cuisines
  #has_many :cuisines, through: :cities
end
