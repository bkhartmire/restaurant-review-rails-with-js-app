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

  def count_restaurants_greeting()
    if current_user.restaurants.any?
      if current_user.restaurants.count == 1
          greeting = "<h3>Congratulations! You visited your first Michelin 3-Star Restaurant!</h3>"
      elsif current_user.restaurants.count > 1
          greeting = "<h3>You've Visited #{current_user.restaurants.count} Michelin 3-Star Restaurants So Far!</h3>"
      end
      raw("#{greeting}<h5>There are #{Restaurant.all.count - current_user.restaurants.count} more Michelin 3-Star Restaurants in the world for you to try!</h5>")
    else
      raw("<h3> You haven't visited any 3-Star Michelin Restaurants Yet</h3>")
    end
  end

  def add_or_see_review(restaurant)
    if current_user.reviews.detect{|review| review.restaurant_id == restaurant.id}
      review = Review.find_by(restaurant_id: restaurant.id)
      link = "<a class='see_review review_#{review.id}' href='/reviews/#{review.id}'>See Your Review</a>"
      raw("#{link}<div class='review_#{review.id}'></div>")
    else
      link = "<a class='add_review restaurant_#{restaurant.id}' href='/restaurants/#{restaurant.id}/reviews/new'>Add Review</a>"
      raw("#{link}<div class='restaurant_#{restaurant.id}'></div>")
    end
  end

end
