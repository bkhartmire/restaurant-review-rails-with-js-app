class CreateUserRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :user_restaurants do |t|
      t.integer :user_id
      t.integer :restaurant_id

      t.timestamps
    end
  end
end
