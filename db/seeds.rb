# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
print 'Delete Products'
Product.destroy_all
puts '[x]'

print 'Delete Suppliers'
Supplier.destroy_all
puts '[x]'

print 'Delete Categories'
Category.destroy_all
puts '[x]'



print 'Create Suppliers'
supplier_list = ["Metro", "La ferme des pigeonneaux", "La ferme de Montvert"]

supplier_list.each do |supplier|
  Supplier.create(name: supplier)
  print "*"
end
puts ''

puts 'Create Categories'
viande = Category.create!(name: 'Viande')
patisserie = Category.create!(name: 'Patisserie')
fruits_et_legumes = Category.create!(name: 'Fruits et légumes')
pain_et_viennoiserie = Category.create!(name: 'Pain et viennoiserie')
traiteur = Category.create!(name: 'Traiteur')
# rouge = Category.create!(name: 'Rouge', parent: viande)
# blanche = Category.create!(name: 'Blanche', parent: viande)
# volaille = Category.create!(name: 'Volaille', parent: viande)
# pain = Category.create!(name: 'Pain', parent: pain_et_viennoiserie)
# viennoiserie = Category.create!(name: 'Viennoiserie', parent: pain_et_viennoiserie)
puts '[x]'

puts 'Create Products'

10.times do
  Product.create(

    name: Faker::Dessert.variety,
    price: rand(1..15),
    price_per_weight: rand(5..30),
    weight: rand(25..990),
    description: Faker::Food.ingredient,
    active: true,
    category_id: Category.all.sample.id,
    supplier_id: Supplier.all.sample.id
  )
  print '*'
end
