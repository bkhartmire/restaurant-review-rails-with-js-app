class Country < ApplicationRecord
  has_many :cities
  has_many :restaurants, through: :cities
end
