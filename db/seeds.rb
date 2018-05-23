# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

jobs_category = Category.where(name: 'jobs').first_or_create(name: 'jobs')
housing_category = Category.where(name: 'housing').first_or_create(name: 'housing')
forsale_category = Category.where(name: 'forsale').first_or_create(name: 'forsale')
services_category = Category.where(name: 'services').first_or_create(name: 'services')


Subcategory.where(name: 'customer service', category_id: jobs_category.id).first_or_create(name: 'customer service', category_id: jobs_category.id)
Subcategory.where(name: 'education', category_id: jobs_category.id).first_or_create(name: 'education', category_id: jobs_category.id)
Subcategory.where(name: 'marketing', category_id: jobs_category.id).first_or_create(name: 'marketing', category_id: jobs_category.id)

Subcategory.where(name: 'rooms/roommates', category_id: housing_category.id).first_or_create(name: 'rooms/roommates', category_id: housing_category.id)
Subcategory.where(name: 'parking rentals', category_id: housing_category.id).first_or_create(name: 'parking rentals', category_id: housing_category.id)
Subcategory.where(name: 'Sublets', category_id: housing_category.id).first_or_create(name: 'Sublets', category_id: housing_category.id)
Subcategory.where(name: 'office/commercial', category_id: housing_category.id).first_or_create(name: 'office/commercial', category_id: housing_category.id)

Subcategory.where(name: 'automobiles', category_id: forsale_category.id).first_or_create(name: 'automobiles', category_id: forsale_category.id)
Subcategory.where(name: 'electronics', category_id: forsale_category.id).first_or_create(name: 'electronics', category_id: forsale_category.id)
Subcategory.where(name: 'apparels', category_id: forsale_category.id).first_or_create(name: 'apparels', category_id: forsale_category.id)
Subcategory.where(name: 'handcrafts', category_id: forsale_category.id).first_or_create(name: 'handcrafts', category_id: forsale_category.id)
Subcategory.where(name: 'sports', category_id: forsale_category.id).first_or_create(name: 'sports', category_id: forsale_category.id)

Subcategory.where(name: 'household', category_id: services_category.id).first_or_create(name: 'household', category_id: services_category.id)
Subcategory.where(name: 'teaching', category_id: services_category.id).first_or_create(name: 'teaching', category_id: services_category.id)
Subcategory.where(name: 'legal', category_id: services_category.id).first_or_create(name: 'legal', category_id: services_category.id)
Subcategory.where(name: 'travel', category_id: services_category.id).first_or_create(name: 'travel', category_id: services_category.id)
