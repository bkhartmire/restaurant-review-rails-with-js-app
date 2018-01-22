class City < ApplicationRecord
  has_many :restaurants
  has_many :cuisines, through: :restaurants

  validates :name, format: {with: /\A[A-Z]{1}[a-z]+(\z|\s[A-Z]{1}[a-z]+)/, message: "of city must be correctly capitalized and only contain alphabetical characters (e.g. Los Angeles)"}

  validates :name, uniqueness: true

end
