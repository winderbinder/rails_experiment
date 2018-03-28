User.create()

10.times do |blog| 
  Post.create!(title: "title#{blog}", body: "this is the populated body", date: "Dec 30 1995")
end

puts "10 posts were created successfully"
