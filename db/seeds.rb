# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

description = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'

# Event.create([
# 	{ title: 'Birthday', description: description, city: 'Moscow', address: 'Red Square', date: '2019-06-30 07:10:00', categories: '1,3', image: '/images/city1.jpg', user_id: 1 },
# 	{ title: 'PHP Beer', description: description, city: 'London', address: 'Trafalgar Square', date: '2019-06-30 07:10:00', categories: '1,3', image: '/images/city2.jpg', user_id: 1 },
# 	{ title: 'Soccer', description: description, city: 'Berlin', address: 'Alexander Platz', date: '2019-06-30 07:10:00', categories: '1,3', image: '/images/city3.jpg', user_id: 1 },
# 	{ title: 'Financial modelling', description: description, city: 'Palo Alto', address: 'Lenin Street', date: '2019-06-30 07:10:00', categories: '1,3', image: '/images/city4.jpg', user_id: 1 },
# 	{ title: 'Rails Party', description: description, city: 'Madrid', address: 'Some Street', date: '2019-06-30 07:10:00', categories: '1,3', image: '/images/city5.jpg', user_id: 1 },
# 	{ title: 'History Club', description: description, city: 'Berlin', address: 'Alexander Platz', date: '2019-06-30 07:10:00', categories: '1,3', image: '/images/city6.jpg', user_id: 1 },
# ])

body = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.'

Blog.create([
	{ title: 'The Worst Advice About Meeting People', body: body, user_id: 1, image: '/images/blog1.png' },
	{ title: 'Why social connections are crucial for your mental health?', body: body, user_id: 1, image: '/images/blog2.png' },
	{ title: 'Why men need their buddies?', body: body, user_id: 1, image: '/images/blog3.png' },
	{ title: 'Pros and Cons of Socializing Outside Work', body: body, user_id: 1, image: '/images/blog4.png' },
	{ title: '6 Myths About Making New Friends', body: body, user_id: 1, image: '/images/blog5.png' },
	{ title: 'The quirkiest things to do in Manchester', body: body, user_id: 1, image: '/images/blog6.png' },
])
