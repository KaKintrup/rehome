# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user = User.new(email: "user@user.com", password: "123456")
user.save

Project.create!(
  title: "Kitchen make Over",
  room: "Kitchen",
  address: "bogenhausen",
  budget: rand(1000..10000),
  time_frame: rand(3..16),
  sustainability: [true, false].sample,
  user: user,
  description: "i want to have new Kitchen design in green",
  img_url: "https://images.unsplash.com/photo-1484154218962-a197022b5858?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fEslQzMlQkNjaGV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60"
)
Project.create!(
  title: "Living Room Reno",
  room: "Living room",
  address: "Rumfordstraße 1",
  budget: rand(1000..10000),
  time_frame: rand(3..16),
  sustainability: [true, false].sample,
  user: user,
  description: "Complete renovation for a modern living room design.",
  img_url: "https://images.unsplash.com/photo-1674230227190-05b589f2f730?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTN8fHdvaG56aW1tZXIlMjAlMjByYW56aWd8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60"
)
Project.create!(
  title: "Cozy Bedroom",
  room: "Bedroom",
  address: "Bayerstraße 2",
  budget: rand(1000..10000),
  time_frame: rand(3..16),
  sustainability: [true, false].sample,
  user: user,
  description: "Transforming the bedroom into a cozy retreat with a contemporary design.",
  img_url: "https://images.unsplash.com/photo-1512918728675-ed5a9ecdebfd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8c2NobGFmemltbWVyJTIwJTIwcmFuemlnfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60"
)
Project.create(
  title: "Bathroom Renovation",
  room: "Bathroom",
  address: "Isartorplatz 3",
  budget: rand(1000..10000),
  time_frame: rand(3..16),
  sustainability: [true, false].sample,
  user: user,
  description: "Complete bathroom renovation with new fixtures and tiles.",
  img_url: ""
)
Project.create(
  title: "Modern Bath Room",
  room: "Living room",
  address: "Maximilianstraße 4",
  budget: rand(1000..10000),
  time_frame: rand(3..16),
  sustainability: [true, false].sample,
  user: user,
  description: "Redesigning the Bath room for a modern and stylish look.",
  img_url: "https://images.unsplash.com/photo-1414452110837-9dab484a417d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8dG9pbGV0dGUlMjBlY2tlbGlnfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60"
)
Project.create(
  title: "Home Office Design",
  room: "Office",
  address: "Leopoldstraße 5",
  budget: rand(1000..10000),
  time_frame: rand(3..16),
  sustainability: [true, false].sample,
  user: user,
  description: "Creating a functional and stylish home office space.",
  img_url: "https://images.unsplash.com/photo-1552793494-111afe03d0ca?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzF8fGIlQzMlQkNybyUyMHJhbnppZ3xlbnwwfHwwfHx8MA%3D%3D&auto=format&fit=crop&w=800&q=60"
)
Project.create(
  title: "Playroom Remodel",
  room: "Playroom",
  address: "Odeonsplatz 6",
  budget: rand(1000..10000),
  time_frame: rand(3..16),
  sustainability: [true, false].sample,
  user: user,
  description: "Renovating the playroom for a fun and safe environment for children.",
  img_url: "https://plus.unsplash.com/premium_photo-1663126312373-b2d5264c2edd?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8emltbWVyfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60"
)
