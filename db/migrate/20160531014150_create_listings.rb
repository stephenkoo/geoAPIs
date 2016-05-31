class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
    	## Adress
    	t.string :street_address
    	t.string :building_number
    	t.string :suburb
    	t.string :state
    	t.string :post_code

    	## Listing Description
    	t.json :listing_pictures
    	t.string :listing_title
    	t.string :listing_description

    	## Place Details
    	t.string :place_type
    	t.string :room_type
    	t.boolean :room_furnished
    	t.integer :housemates_qty
    	t.integer :bedroom_qty
    	t.integer :bathroom_qty
    	t.boolean :bathroom_shared
    	t.string :parking
    	t.string :place_features

    	## Price & stay length
    	t.integer :price_weekly
    	t.integer :bond_price
    	t.boolean :bills_included
    	t.integer :bills_weekly
    	t.string :stay_length
    	
    	## Renter requirements
    	t.integer :renter_min
    	t.integer :renter_max
    	t.string :renter_gender
    	t.string :renter_attributes

    	# Timestamp
      t.timestamps null: false
    end
  end
end
