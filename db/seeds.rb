User.create!(name: "ello", email: "hey@hey.com", password: "asdfasdf", password_confirmation: "asdfasdf")
puts "1 user created"

Post.create!(title: "title", user_id: 1, body: "this is the populated body", date: "Dec 30 1995" )
puts "post assocoation created"



