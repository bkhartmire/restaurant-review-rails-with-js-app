class AddPriceRangeToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :price_range, :integer
  end
end
