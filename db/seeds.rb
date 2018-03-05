10.times do |blog| 
  Post.create!(title: "title#{blog}", body: "this is the populated body", date: "12/30/1995")
end
