# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

rand(8).times do |i|
  u = User.create!({
    username: Faker::Name.first_name,
    password: "password",
    email: Faker::Internet.free_email,
    species: Faker::Name.species
  })

  rand(2..8).times do |i|
    u.posts << Post.create({
      text: Faker::Lorem.sentence(3)
      })
  end

  rand(2..7).times do |i|
    u.subscriptions << Follow.new(followed_user_id: User.all.sample.id)
  end

end
