class InitialNish < ActiveRecord::Migration
  def change

# There are the tables. We have three tables currently

    create_table :categories do |a|
      a.string :name
    end

    create_table :subcategories do |a|
      a.string :name
      a.integer :category_id
    end

    create_table :listings do |a|
      a.string :title
      a.string :description
      a.string :city
      a.string :state
      a.string :zipcode
      a.timestamps
    end

  end
end
