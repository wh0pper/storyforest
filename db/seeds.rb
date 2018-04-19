Tree.destroy_all

10.times do |index|
  Tree.create!(title: Faker::Book.title, points: Faker::Number.between(1, 10))
end



p "Created #{Tree.count} trees"
