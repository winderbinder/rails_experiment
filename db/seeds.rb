User.create!(
 name: "ello",
 email: "test@test.com",
 password: "asdfasdf",
 password_confirmation: "asdfasdf",
 role: "site_admin"
)
puts "1 user created"

Post.create!(make: "toyota", model: "corolla", year: "2017", trim: "s")
Post.create!(make: "honda", model: "civic", year: "2017", trim: "lx")
Post.create!(make: "nissan", model: "sentra", year: "2017", trim: "sv")
Post.create!(make: "mitsubishi", model: "lancer", year: "2017", trim: "es")
Post.create!(make: "hyundai", model: "elantra", year: "2017", trim: "s")

puts "5 cars generated"



