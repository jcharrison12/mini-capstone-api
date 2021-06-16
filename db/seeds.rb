# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Product.create(name: "canvases", price: 20, image_url: "https://images.ctfassets.net/f1fikihmjtrp/3CDdug9IYkzm0AMUACUmAW/e8ddf90393326c1b00602b611953865e/07008-group1-4ww.jpg?q=80&w=250&fm=webp", description: "A multi-pack of decent canvas panels")
Product.create(name: "paints", price: 10, image_url: "fakeurl.jpg", description: "Oil paints in all colors of the rainbow")
