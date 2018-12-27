class Visit < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  validates_uniqueness_of :user_id, :scope => :restaurant_id
end
end
