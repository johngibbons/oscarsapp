# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do |n|
  name  = Faker::Name.title
  value = Faker::Number.number(1)
  Category.create!( name:  name,
                    value: value)
end

12.times do |i|
  name = Faker::Name.name
  category_id = [Faker::Number.between(from = 1, to = 10), Faker::Number.between(from = 1, to = 10), Faker::Number.between(from = 1, to = 10)]
  Nominee.create!( name: name,
                   category_ids: category_id)
end