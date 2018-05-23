class AddCategorySubcategoryToListings < ActiveRecord::Migration
  #Adding new columns for category and subcategory in the database
  def change
    add_column :listings, :category_id, :integer
    add_column :listings, :subcategory_id, :integer
  end
end
