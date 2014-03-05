# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Require 'faker'

#create 50 users
50.times do 
  user = User.new(email: Faker::Internet.email, 
                  password: 'password')
  user.save
end

#create 12 tweets per user
users = User.all
users.each do |user|
  12.times do
    chittle = Chittle.new(chit_text: Faker::Lorem.words(30).join(" "),
                      user_id: user.id)
    chittle.save
end

users = User.all
users.each do |user|
  12.times do
    chatter = Chatter.new(chit_response: Faker::Lorem.words(30).join(" "),
                      user_id: user.id)
    chatter.save
end

end

puts "#{User.count} users created."
puts "#{Chittle.count} Chits created."
puts "#{Chatter.count} chatter created."