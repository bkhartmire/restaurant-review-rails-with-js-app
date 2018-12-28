class RestaurantSerializer < ActiveModel::Serializer
  attributes :id, :name, :website_url
  belongs_to :city
  belongs_to :cuisine
  has_many :reviews
  has_many :visits
  has_many :users, through: :visits
end
