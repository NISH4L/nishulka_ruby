class CategoriesController < ApplicationController

  def index
    @categories = Category.all
    @jobs = @categories[0]
    @housing = @categories[1]
    @forsale = @categories[2]
    @services = @categories[3]
  end

  def show
    @listings = Listing.where(category_id: params[:id])
    @category = Category.find(params[:id])
  end


end
