class AddUserCreatorIdToRestaurants < ActiveRecord::Migration[5.1]
  def change
    add_column :restaurants, :user_creator_id, :integer, default: nil
  end
end
