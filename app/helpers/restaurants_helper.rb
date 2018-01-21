module RestaurantsHelper
  def calculate_average(restaurant)
    if restaurant.reviews.none?
      "This restaurant has no reviews."
    else
      sum = 0
      restaurant.reviews.each do |review|
        sum += review.rating
      end
      "Average Rating: #{sum/(restaurant.reviews.count.round(2))} Stars"
    end
  end

end
