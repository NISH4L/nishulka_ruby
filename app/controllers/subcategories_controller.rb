class SubcategoriesController < ApplicationController


  def show
    @listings = Listing.where(subcategory_id: params[:id])
    @category = Category.find(params[:category_id])
    @subcategory = Subcategory.find(params[:id])
  end

  #This is as the name says to show only those subcategories under the selected dropdown of category
  def dynamic_dropdown
    category = Category.find(params[:category_id])
    subcategories = category.subcategories.find_all
    render json: {subcategories: subcategories}
  end



end
