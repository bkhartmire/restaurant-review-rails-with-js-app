module RestaurantsHelper
  def calculate_average(restaurant)
    sum = 0
    restaurant.reviews.each do |review|
      sum += review.rating
    end
    sum/(restaurant.reviews.count.round(2))
  end
end
