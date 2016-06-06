class AddUserIdToListings < ActiveRecord::Migration
  def change
  	## To record user creator of listing
    add_column :listings, :user_id, :integer
  end
end
