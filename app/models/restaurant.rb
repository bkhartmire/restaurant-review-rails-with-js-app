class Restaurant < ApplicationRecord
  has_many :reviews
  has_many :users, through: :reviews
  belongs_to :cuisine
  belongs_to :city
end
