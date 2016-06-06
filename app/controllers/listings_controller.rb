class ListingsController < ApplicationController
	before_action :authenticate_user!, except: [:index, :home, :show]
	config.relative_url_root = ""
	def index
	end

	def home
		@listings = Listing.all
	end

	def new
		@listing = current_user.listings.build
		@states = states
	end

	def create
		puts listing_params
		@listing = Listing.create(listing_params)
		respond_to do |format|
			if @listing.save
				current_user.listings << @listing
				current_user.save
				format.html { redirect_to @listing, notice: 'Listing successfully created.'}
				format.json { render :show, status: :created, location: @listing }
			else
				format.html { render :new }
				format.json { render json: @listing.errors, status: :unprocessable_entity }
			end
		end
	end

	def show
		@listing = Listing.find(params[:id])
	end
	
	def edit
	end

	def update
	end

	def destroy
		@listing = Listing.find(params[:id])
		@listing.destroy
		@listing.remove_listing_pictures!
		@listing.save
		redirect_to root_path
	end

	def listing_params
		params.require(:listing).permit(
			:street_address, 
			:building_number, 
			:suburb, 
			:state, 
			:post_code, 
			{listing_pictures: []}, 
			:listing_title, 
			:listing_description,
			:place_type,
			:room_type,
			:room_furnished,
			:housemates_qty,
			:bedroom_qty,
			:bathroom_qty,
			:bathroom_shared,
			:parking,
			:price_weekly,
			:bond_price,
			:bills_included,
			:bills_weekly,
			:renter_min,
			:renter_max,
			:place_features, 
			:stay_length, 
			:renter_gender, 
			:renter_attributes
			)
	end

	def states
		[ "VIC", "NSW", "ACT", "QLD", "TAS", "NT", "WA", "SA" ]
	end

end