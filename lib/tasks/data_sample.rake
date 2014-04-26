namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    make_users
    make_links
    make_comments
  end
end

def make_users
  User.create!(email: "huangxx@live.com",
              password: "password",
              password_confirmation: "password")
    99.times do |n|
      name  = Faker::Name.name
      email = "test-#{n+1}@test.org"
      password  = "password"
      User.create!(email: email,
                   password: password,
                   password_confirmation: password)
    end
end

def make_links
  users = User.all
  users.each do |user|
    link = Faker::Internet.url
    title_name =  Faker::Lorem.sentence(2)
    user.links.create!(title: title_name, url:link)
  end
end

def make_comments
  users = User.all(limit: 6)
  users.each do |user|
    links = user.links.all
    links.each do |link|
      comments = Faker::Lorem.sentence(5)
      link.comments.create!(message: comments, user_id: user.id)
    end
  end
end