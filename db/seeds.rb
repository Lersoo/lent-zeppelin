# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
new_user = User.new(email: 'thomas.soler.06@gmail.com', password: 'tototo', password_confirmation: 'tototo')
new_user.save!

zeppelin_params = {
  name: "Lent Zeppelin",
  price: 500,
  location: 'Lyon',
  start_date: Date.today - 2,
  end_date: Date.today + 2,
  user_id: 1
}

Zeppelin.create!(zeppelin_params)
