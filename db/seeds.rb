# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.create(name: "stu")
User.create(name: "jo")


Category.create(name:"comedy")
Category.create(name:"drama")
Category.create(name:"action")
Category.create(name:"horror")

Picture.create(title: "very funny", image_url: "https://i.picsum.photos/id/1006/3000/2000.jpg?hmac=x83pQQ7LW1UTo8HxBcIWuRIVeN_uCg0cG6keXvNvM8g", user_id: 1, category_id: 1)
