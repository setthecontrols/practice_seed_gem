User.destroy_all
10.times do 
     Post.create!(username: Faker::Name.first_name)
    end
User.destroy_all
10.times do 
     User.create!(username: Faker::Name.first_name)
    end
