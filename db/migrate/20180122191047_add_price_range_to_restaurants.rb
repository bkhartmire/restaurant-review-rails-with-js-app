class AddPriceRangeToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :price_range, :string
  end
end
