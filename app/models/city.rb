class City < ApplicationRecord
  has_many :restaurants
  belongs_to :country


  validates :name, uniqueness: true

end
