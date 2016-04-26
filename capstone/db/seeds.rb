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
