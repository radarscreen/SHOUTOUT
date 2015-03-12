# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Profile.create(username: 'pouchy', email: 'pouch@gmail.com', password: '123abc')

Profile.create(username: 'squirrely', email: 'squirrel@gmail.com', password: '123abc')

Profile.create(username: 'gpom', email: 'gpom@gmail.com', password: '123abc')

Profile.create(username: 'horns', email: 'horns@gmail.com', password: '123abc')



Category.create(category: 'dining')

Category.create(category: 'activity')

Category.create(category: 'entertainment')


Shout.create(title: 'Yoga in the Park', time: '2015/05/25 12:30:00', location: "St.Mary's Park", description: 'Come one, come all to enjoy some free yoga in the sun!', profile_id: '55', category_id: '31')

Shout.create(title: 'Running', time: '2015/08/16 22:17:00', location: "Embarcadero", description: 'Get your run on! Bring a friend and some shoes...', profile_id: '56', category_id: '31')

Shout.create(title: 'Iceskating', time: '2015/10/02 15:38:00', location: "Snow Lake", description: "We're practicing our pirouettes, bring your spin", profile_id: '57', category_id: '32')

Shout.create(title: 'Ethiopian Food', time: '2015/09/18 07:25:00', location: "Das", description: 'Bring your appetite and a desire to get your hands dirty with some yummy food!', profile_id: '55', category_id: '33')

Shout.create(title: 'Chat Noir Chat Blanc', time: '2015/12/28 14:35:00', location: "2126 5th St, Berkeley", description: 'Enjoy this fab', profile_id: '58', category_id: '31')

Shout.create(title: 'Kite Surfing', time: '2015/11/08 11:30:00', location: "Aquatic Park", description: 'Bruise yourself on the rocks while kitesurfing with crazies', profile_id: '55', category_id: '32')


