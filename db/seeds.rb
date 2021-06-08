# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
20.times do 
	post = Post.create!(
		title: Faker::Lorem.sentence,
		body: Faker::Lorem.sentence,
		)
	puts "Fake post [#{post.title}]"
end


# 20.times do 
# 	user = User.create!(
# 		email: Faker::Internet.email,
# 		userName: Faker::Name.first_name,
# 		password: Faker::Number.number(digits: 10),
# 		password_confirmation: Faker::Number.number(digits: 10),
# 		)
# 	puts "Fake user [#{user.email}]"
# end