# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
new_user = User.new(email: , password: 'tototo', password_confirmation: 'tototo')
new_user.save!

user_params = [
  {
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

  user_params.each { |params| User.create!(params)}


