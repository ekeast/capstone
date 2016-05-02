# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
20.times do
  User.create!(
  provider: "facebook",
  uid: Faker::Company.swedish_organisation_number,
  name: Faker::Name.name
  )
end

users = User.all

50.times do
  Article.create!(
  link: Faker::Internet.url
  )
end

articles = Article.all

500.times do
  Rate.create!(
  rater_id: users.sample.id,
  rateable_id: articles.sample.id,
  rateable_type: "Article",
  stars: Faker::Number.between(1, 5),
  dimension: "link",
  )
end

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Article.count} articles created"
puts "#{Rate.count} ratings created"
