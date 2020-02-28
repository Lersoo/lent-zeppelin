# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'open-uri'

User.destroy_all

user_params = [{
  name: 'Toto',
  email: 'thomas.soler.06@gmail.com',
  password: 'tototo',
  password_confirmation: 'tototo'
},
{
  name: 'David O. Bob',
  email: 'davidobob@laposte.net',
  password: 'tototo',
  password_confirmation: 'tototo'
}, {
  name: Faker::FunnyName,
  email: Faker::Internet.email,
  password: 'tototo',
  password_confirmation: 'tototo'
}, {
  name: Faker::FunnyName,
  email: Faker::Internet.email ,
  password: 'tototo',
  password_confirmation: 'tototo'
}]

booking_params = [{ user_id: rand(1..4),
  zeppelin_id: rand(1..6),
  booking_date: Date.today },
  { user_id: 2,
    zeppelin_id: 2,
    booking_date: Date.today
  }, {
    user_id: 3,
    zeppelin_id: 3,
    booking_date: (Date.today + 2)
  },{ user_id: 4,
    zeppelin_id: 2,
    booking_date: (Date.today + 1)
  }
]

p 'Seeding users ...'

user_params.each do |params|
  User.create!(params)
  p 'Created user!'
end

p 'Done !'
p '----------------------'
p 'Creating zeppelins...'

cities = ['Marseille', 'Lyon', 'Paris']

zeppelin1 = Zeppelin.create!(name: Faker::FunnyName.two_word_name, location: cities.sample, price: rand(100..10000), start_date: Faker::Date.backward, end_date: Faker::Date.forward, user: User.all.sample)
zeppelin2 = Zeppelin.create!(name: Faker::FunnyName.two_word_name, location: cities.sample, price: rand(100..10000), start_date: Faker::Date.backward, end_date: Faker::Date.forward, user: User.all.sample)
zeppelin3 = Zeppelin.create!(name: Faker::FunnyName.two_word_name, location: cities.sample, price: rand(100..10000), start_date: Faker::Date.backward, end_date: Faker::Date.forward, user: User.all.sample)
zeppelin4 = Zeppelin.create!(name: Faker::FunnyName.two_word_name, location: cities.sample, price: rand(100..10000), start_date: Faker::Date.backward, end_date: Faker::Date.forward, user: User.all.sample)
zeppelin5 = Zeppelin.create!(name: Faker::FunnyName.two_word_name, location: cities.sample, price: rand(100..10000), start_date: Faker::Date.backward, end_date: Faker::Date.forward, user: User.all.sample)
zeppelin6 = Zeppelin.create!(name: Faker::FunnyName.two_word_name, location: cities.sample, price: rand(100..10000), start_date: Faker::Date.backward, end_date: Faker::Date.forward, user: User.all.sample)

p 'Done!'
p '----------------------'

file1 = URI.open("https://images2.minutemediacdn.com/image/upload/c_fill,g_auto,h_1248,w_2220/f_auto,q_auto,w_1100/v1555925598/shape/mentalfloss/goodyear-blimp.png")
file2 = URI.open("https://www.goodyearblimp.com/behind-the-scenes/img/wingfoot3_m.jpg")
file3 = URI.open("https://miro.medium.com/max/6000/1*l3L6y4YPq14OIcs-S14IFA.jpeg")
file4 = URI.open("https://pmcvariety.files.wordpress.com/2020/01/img_0505.jpg?w=1000&h=563&crop=1")
file5 = URI.open("https://upload.wikimedia.org/wikipedia/commons/f/f4/USS_Los_Angeles_moored_to_USS_Patoka%2C_1931.jpg")
file6 = URI.open("https://media.golfdigest.com/photos/5808f20b6bab69e556439013/master/pass/161020-metlife-blimp.png")

p zeppelin1
p 'Attaching photos ...'
zeppelin1.photo.attach(io: file1, filename: "zeppelin1.png", content_type: "image/png")
p 'Done 1'
zeppelin2.photo.attach(io: file2, filename: "zeppelin2.png", content_type: "image/png")
p 'Done 2'
zeppelin3.photo.attach(io: file3, filename: "zeppelin3.png", content_type: "image/png")
p 'Done 3'
zeppelin4.photo.attach(io: file4, filename: "zeppelin4.png", content_type: "image/png")
p 'Done 4'
zeppelin5.photo.attach(io: file5, filename: "zeppelin5.png", content_type: "image/png")
p 'Done 5'
zeppelin6.photo.attach(io: file6, filename: "zeppelin6.png", content_type: "image/png")
p 'Done 6'

p 'Done!'
p '----------------------'
p 'Seeding bookings ...'

15.times do
  zep = Zeppelin.all.sample
  Booking.create!(user: User.all.sample, zeppelin: zep, booking_date: Faker::Date.between(from: zep.start_date, to: zep.end_date))
  p 'Created booking!'
end
p '----------------------'
p 'Done!'
