class CitySerializer < ActiveModel::Serializer
  attributes :id, :name
  belongs_to :country
  has_many :restaurants
end
