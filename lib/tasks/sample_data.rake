namespace :db do
  desc "Fill database with sample data"
  task :populate => :environment do
    # Rake::Task['db:reset'].invoke
    make_users
    make_microposts
    make_relationships
  end
end

def make_users
    admin = User.create!(name: "CF Grugan",
        email: "charles.grugan@gmail.com",
        password: "Arma3456",
        password_confirmation: "Arma3456",
        admin: true)
  99.times do |n|
    name = Faker::Name.name
    email = "example-#{n+1}@railstutorial.org"
    password = "password"
    User.create!(:name => name,
                 :email => email,
                 :password => password,
                 :password_confirmation => password)
  end
end

def make_microposts
  users = User.all(limit: 6)
  50.times do
    content = Faker::Lorem.sentence(5)
    photo = 'assets/images/sampleimages/image-1.jpg'
    photo2 = 'assets/images/sampleimages/image-9.jpg'
    users.each { |user| user.microposts.create!(content: content) }
  end
end

def make_relationships
  users = User.all
  user  = users.first
  following = users[1..50]
  followers  = users[3..40]
  following.each { |followed| user.follow!(followed) }
  followers.each { |follower| follower.follow!(user) }
end
