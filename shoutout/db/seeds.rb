# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

pouchy = Profile.create(username: 'pouchy', email: 'pouch@gmail.com', password: '123abc')

dining = Category.create(category: 'dining')

activity = Category.create(category: 'activity')

entertainment = Category.create(category: 'entertainment')

yoga = Shout.create(title: 'Yoga in the Park', time: '2015/05/25 12:30:00', location: "St.Mary's Park", description: 'Come one, come all to enjoy some free yoga in the sun!', profile_id: '5', category_id: '2')