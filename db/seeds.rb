Tree.destroy_all
Branch.destroy_all

10.times do |index|
  tree = Tree.create!(title: Faker::Book.title, points: Faker::Number.between(1, 10))
  5.times do |j|
    tree.branches.create(body: Faker::TwinPeaks.quote)
  end
end



p "Created #{Tree.count} trees with #{Branch.count} default branches"
