# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Defining default users
puts "Seeding users:\n\r"

users = []

marion = {
  username: 'marion',
  email: 'marion@marionrommel.de',
  password: 'myArt_2015'
}

users << marion

stephan = {
  username: 'stephan',
  email: 'railsc0d0r@gmail.com',
  password: 'letMeIn_2015'
}

users << stephan

users.each do |user|

  user[:password_confirmation] = user[:password]

  user[:activated] = true
  user[:is_admin] = true
  
  old_user = User.find_by(username: user[:username], email: user[:email])

  if old_user.nil?
    puts "Creating user #{user[:username]} ->"
    User.create!(user)
    puts "Done."
  else
    puts "User #{user[:username]} already exists. Nothing to do here."
  end
end
