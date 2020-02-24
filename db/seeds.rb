# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_params = [{
  email: 'thomas.soler.06@gmail.com',
  password: 'tototo',
  password_confirmation: 'tototo'
},
{
  email: 'davidobob@laposte.net',
  password: 'tototo',
  password_confirmation: 'tototo'
},
{
  email: 'captain_simon@beaugosse.com',
  password: 'tototo',
  password_confirmation: 'tototo'
},
{
  email: 'anarcho@trots.kyste',
  password: 'tototo',
  password_confirmation: 'tototo'
}]


zeppelin_params = [{ name: 'Led Zep',
location: 'Lyon',
price: 500,
start_date: Date.today,
end_date: (Date.today + 2),
user_id: 4 },
{ name: 'Coucou',
location: 'Paris',
price: 100000,
start_date: Date.today,
end_date: (Date.today + 1),
user_id: 4 },
{ name: 'Tonton Dirigeable',
location: 'Strasbourg',
price: 20,
start_date: Date.today,
end_date: (Date.today + 10),
user_id: 4 }]

booking_params = [{ user_id: 1,
zeppelin_id: 1,
total_price: 500,
booking_date: Date.today },
{ user_id: 2,
zeppelin_id: 2,
total_price: 10000,
booking_date: Date.today
}, {
user_id: 3,
zeppelin_id: 3,
total_price: 200,
booking_date: (Date.today + 2)
},
{ user_id: 4,
zeppelin_id: 2,
total_price: 10000,
booking_date: (Date.today + 1) }]


p 'Seeding users ...'
user_params.each do |params|
  User.create!(params)
  p 'Created user!'
end
p 'Done !'
p 'Seeding Zeppelins...'
zeppelin_params.each do |params|
  Zeppelin.create!(params)
  p 'Created zeppelin!'
end
p 'Done!'
p 'Seeding bookings ...'
booking_params.each do |params|
  Booking.create!(params)
  p 'Created booking!'
end
p 'Done!'
