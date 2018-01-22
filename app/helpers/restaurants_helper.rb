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

  def restaurant_errors(restaurant, error_messages)
    error_messages << restaurant.errors.full_messages if restaurant.errors.any?
    error_messages << restaurant.cuisine.errors.full_messages if restaurant.cuisine.errors.any?
    error_messages << restaurant.city.errors.full_messages if restaurant.city.errors.any?
  end

end
