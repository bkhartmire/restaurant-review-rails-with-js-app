class CountrySerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :cities
  has_many :restaurants, through: :cities
end
