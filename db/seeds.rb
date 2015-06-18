# User.create!(username:  "muffins",
#              email: "example@example.org",
#              password:              "gangstar1",
#              password_confirmation: "gangstar1")

15.times do |n|
  name  = Faker::Internet.user_name
  email = "example-#{n+1}@example.org"
  password = "password"
  User.create!(username:  name,
               email: email,
               password:              password,
               password_confirmation: password)
end