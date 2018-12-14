class CreateRestaurants < ActiveRecord::Migration[5.1]
  def change
    create_table :restaurants do |t|
      t.integer :city_id
      t.string :name
      t.string :website_url
      t.integer :cuisine_id

      t.timestamps
    end
  end
end
