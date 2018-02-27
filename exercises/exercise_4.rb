require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'

puts "Exercise 4"
puts "----------"

@store4 = Store.create(name: 'Surrey', annual_revenue: 224000, womens_apparel: true, mens_apparel: false)
@store5 = Store.create(name: 'Whistler', annual_revenue: 1900000, mens_apparel: true, womens_apparel: false)
@store6 = Store.create(name: 'Yaletown', annual_revenue: 430000, mens_apparel: true, womens_apparel: true)

@mens_stores = Store.where(mens_apparel: true)

@mens_stores.each do |store|
  puts "Store Name: #{store.name}. Store AR: #{store.annual_revenue}"
end

@low_rev_womens = Store.where("annual_revenue < ?", 1000000).where(womens_apparel: true)

@low_rev_womens.each do |store|
  puts "Sells womens clothes and AR < 1000000: #{store.name}"
end

# @low_rev_womens.each do |store|
#   puts "Store Name: #{store.name}. Store AR: #{store.annual_revenue}"
# end