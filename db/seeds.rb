# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

description = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'

Event.create([
	{ title: 'Birthday', description: description, city: 'Moscow', address: 'Red Square', date: '2019-06-30 07:10:00', categories: '1,3', image: '/images/city1.jpg' },
	{ title: 'PHP Beer', description: description, city: 'London', address: 'Trafalgar Square', date: '2019-06-30 07:10:00', categories: '1,3', image: '/images/city2.jpg' },
	{ title: 'Soccer', description: description, city: 'Berlin', address: 'Alexander Platz', date: '2019-06-30 07:10:00', categories: '1,3', image: '/images/city3.jpg' },
	{ title: 'Financial modelling', description: description, city: 'Palo Alto', address: 'Lenin Street', date: '2019-06-30 07:10:00', categories: '1,3', image: '/images/city4.jpg' },
	{ title: 'Rails Party', description: description, city: 'Madrid', address: 'Some Street', date: '2019-06-30 07:10:00', categories: '1,3', image: '/images/city5.jpg' },
	{ title: 'History Club', description: description, city: 'Berlin', address: 'Alexander Platz', date: '2019-06-30 07:10:00', categories: '1,3', image: '/images/city6.jpg' },
])
