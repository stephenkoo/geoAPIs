class Listing < ActiveRecord::Base
	belongs_to :user
	# validates :address, presence: true
	# validates :max_rent, greater_than_or_equal_to: :min_rent, :message => "Max rent must be equal or greater than minimum rent."
	mount_uploaders :listing_pictures, ListingPicUploader
end
