# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



# 30.times do
# 	Activity.create(name: Faker::Hipster.word, description: Faker::Hipster.sentence(8))
# end

activities = ["Coffee Break", "Browse Internet", "Walk", "Call Mom", "Stretch"]


Activity.create(name: "Coffee Break", description: "A cup of hot, steamy brown goes down smooth and keeps the peepers open!", countable: false)
Activity.create(name: "Browse Internet", description: "OMG! Whats trending on twitter?? WHO FACEBOOKED ME!? Life's important questions. Get answers.", countable: false)
Activity.create(name: "Walk", description: "Stroll it out my friend. A stretch of the gams is worth two in the hams.", countable: false)
Activity.create(name: "Call Mom", description: "What's she up to these days, I wonder? Oh she'll tell ya.", countable: false)
Activity.create(name: "Stretch", description: "A lengthened bod is an A+ bod. Say goodbye to aches and pains, friend!", countable: false)
Activity.create(name: "Push-ups", description: "Drop and gimme as many as you got in there ya old sack o' bones!", countable: true)
Activity.create(name: "Jumping Jacks", description: "Before there was jogging and lattes, there were jumping jacks!", countable: true)
Activity.create(name: "Crunches", description: "Get ripped just in time for the next round of New Years Resolutions!", countable: true)

20.times do
	user = User.create(name: Faker::Name.name, email: Faker::Internet.email, password:'password')
	activities = Activity.limit(8)
  activities.each do |activity|
    Favorite.create(user_id: user.id, activity_id: activity.id)
  end
end

User.create(name: "user", email: "user@user.com", password: "password")
User.create(name: "Guest", email: "guest@breaktimerails.com", password: "password")
activities = Activity.limit(8)
  activities.each do |activity|
    Favorite.create(user_id: 21, activity_id: activity.id)
  end