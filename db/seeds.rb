# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
IMGPATH = ["https://images.unsplash.com/photo-1580587771525-78b9dba3b914?ixlib=rb-1.2.1&auto=format&fit=crop&w=1934&q=80",
"https://images.unsplash.com/photo-1518780664697-55e3ad937233?ixlib=rb-1.2.1&auto=format&fit=crop&w=1301&q=80",
"https://images.unsplash.com/photo-1475855581690-80accde3ae2b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=3900&q=80",
"https://images.unsplash.com/photo-1512917774080-9991f1c4c750?ixlib=rb-1.2.1&auto=format&fit=crop&w=2100&q=80",
"https://images.unsplash.com/photo-1564013799919-ab600027ffc6?ixlib=rb-1.2.1&auto=format&fit=crop&w=2100&q=80",
"https://images.unsplash.com/photo-1576941089067-2de3c901e126?ixlib=rb-1.2.1&auto=format&fit=crop&w=2343&q=80",
"https://images.unsplash.com/photo-1582268611958-ebfd161ef9cf?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60",
"https://images.unsplash.com/photo-1523217582562-09d0def993a6?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60",
"https://images.unsplash.com/photo-1516281717304-181e285c6e58?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60",
"https://images.unsplash.com/photo-1502005097973-6a7082348e28?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60",
"https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60",
"https://images.unsplash.com/photo-1560026301-88340cf16be7?ixlib=rb-1.2.1&auto=format&fit=crop&w=1000&q=60"]
Flat.destroy_all
puts "started fill db"
x = 0
10.times do
  puts x += 1
  flat = Flat.new()
  flat.name = Faker::Name.name_with_middle
  flat.address = Faker::Address.full_address
  flat.description = Faker::Lorem.sentence(word_count: Faker::Number.between(from: 10, to: 20))
  flat.price_per_night = Faker::Number.between(from: 50, to: 200)
  flat.number_of_guests = Faker::Number.between(from: 1, to: 6)
  flat.img_path = IMGPATH[Faker::Number.between(from: 0, to: 11)]
  flat.save!
  puts "finish #{x}"
end
puts "ended fill db so good!"
