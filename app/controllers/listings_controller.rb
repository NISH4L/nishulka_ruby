class ListingsController < ApplicationController


  #before_filter function helps to check if the user is logged in before he can post, edit or delete content

  before_filter :authenticate_user!, only: [:new, :create]
  before_filter :is_user?, only: [:edit, :update, :delete]

  def new
    @listing =  Listing.new
  end

  def create
    @listing = Listing.new(listing_params)
    #If the listing is successful, it saves
    if @listing.save
      @listing.user = current_user
      redirect_to @listing
    #or else gives the error messages each time generating a new form
    else
      flash[:alert] = @listing.errors.full_messages.to_sentence #These are prebuilt error message in ruby
      render 'new'
    end
  end

  def show
    @listing = Listing.find(params[:id])
  end

  def search
    @listings = Listing.search(params)
  end

  def myads
    @listings = Listing.where(user: current_user)
  end

  def edit
    @listing = Listing.find(params[:id])
  end

  def update
    @listing = Listing.find(params[:id])
    @listing.update(listing_params)
    redirect_to @listing
  end

  def destroy
    @listing = Listing.find(params[:id])
    @listing.destroy
    redirect_to root_path
  end

  def is_user?
    @listing = Listing.find(params[:id])
    unless current_user = @listing.user
      redirect_to root_path, alert: "You do not have permission to perform that action!"
    end
  end

  private

  def listing_params
    params.require(:listing).permit(:title, :description, :city, :state, :zipcode, :category_id, :subcategory_id)
  end


end
