class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :admin
  has_many :reviews
  has_many :visits
  has_many :restaurants, through: :visits
end
