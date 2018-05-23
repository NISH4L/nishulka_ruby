class Listing < ActiveRecord::Base

    belongs_to :category
    belongs_to :subcategory
    belongs_to :user
    #validates_presence_of :user #Validate is used for extra security. It validates that the user id is present

    #validates_presence_of checks if the given criteria is fulfilled before performing defined action

    validates_presence_of :title
    validates_presence_of :description
    validates_presence_of :city
    validates_presence_of :state

    #Geocoder is a gemfile later added. This helps us to get the location of the address when someone posts an ad
    geocoded_by :full_address
    after_validation :geocode

    def full_address
      [city, state, zipcode].join(', ')
    end

    def self.search(params)
      listings = Listing.where(category_id: params[:category].to_i) #and making it to integer
      listings = listings.where("title like ? or description like ?", "%#{params[:search]}%", "%#{params[:search]}%") if params[:search].present? #now take that and add to listing
      listings = listings.near(params[:location], 20) if params[:location].present?
      listings
    end


end
