class Cuisine < ApplicationRecord
  has_many :restaurants
  #has_many :cities, through: :restaurants

  validates :name, format: {with: /\A[A-Z]{1}[a-z]+(\z|\s[A-Z]{1}[a-z]+)/, message: "of cuisine must be correctly capitalized and only contain alphabetical characters (e.g. Fast Food)"}

  validates :name, uniqueness: true
end
