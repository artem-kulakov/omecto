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

body = 'Lorem ipsum dolor sit amet, sit mauris arcu neque ut, orci scelerisque iaculis amet et neque aliquam, aliquet enim enim. Neque diam vitae, vulputate diam, risus odio lacus, tellus vel. Pellentesque tincidunt dolor turpis ut, vitae aliquet diam lacus. Elit viverra urna proin tempor, amet et amet risus eu, purus nunc dolor aliquet luctus in, et viverra. At gravida vestibulum. Id morbi quisque vitae enim mauris, praesent in id ullamcorper mi dui, consequat ac luctus orci molestie, eu integer tortor tellus in metus metus, hendrerit eu dui interdum suspendisse nulla. Scelerisque dictum ligula, consequuntur dapibus accumsan est nulla tempus non. Egestas pulvinar velit magna leo nisl, eu sem etiam mauris, class erat tincidunt sit sem. Elementum eleifend, a pellentesque. Elit ipsum, neque nec ut sit. Nec justo ullamcorper felis viverra felis pellentesque, quisque nulla id amet volutpat sem, ultrices sed libero quod, fringilla quis, et ac justo ipsum. Diam ut ligula aptent dolor etiam, lobortis purus molestie adipiscing eget, torquent gravida quis maecenas vulputate eget ligula, leo lectus felis ante quis tortor, ante sed inventore cras hac egestas. Lorem tristique aptent a ullamcorper nibh, curae dolor adipiscing tellus nascetur. Eu purus, et vel vestibulum, dapibus erat tincidunt leo a libero, dui nulla sit lacus vel. Dignissim volutpat orci consequat neque nullam mauris, et sed, bibendum pellentesque sem eu fringilla wisi quis. Duis ac mattis amet, eget duis mollis aenean, in massa est dignissim ornare enim proin. Diam libero natoque magna mollis pellentesque luctus, sed sem morbi montes mauris, venenatis fringilla cursus luctus pellentesque tristique, vestibulum ac integer quam metus. Dapibus elementum, condimentum turpis porttitor et, lobortis convallis eros varius, lectus aptent non mauris turpis pretium curae, ligula urna elementum ante erat pede odio. Rutrum scelerisque libero ac integer eget volutpat, pellentesque erat, et sociis ligula urna cursus nam, condimentum semper ut quis consectetuer vivamus, rhoncus nec sed vestibulum. Lectus vel nulla faucibus mattis id, in porttitor sint, eget ipsum, magna urna eu nulla. In nec in enim quam ut, sodales pulvinar lectus. Turpis vel quam, nulla vitae tempus quis gravida, vel quis augue a massa, elit fermentum non nibh metus. Lectus amet, at integer at, malesuada dictum sociosqu ullamcorper facilisis fringilla, quam pellentesque tincidunt lobortis. At ultricies omnis consequat diam, mollit a consectetuer nullam. A pulvinar blandit nam eu sodales auctor. Platea quam non morbi quam wisi cras, pede fringilla nam suscipit suspendisse. Donec laoreet nam molestie, commodo in parturient a quam eu dui, eu iaculis per, ac habitasse ac mi vivamus eleifend lacinia. Wisi at sem massa. Maecenas quam eu magnis qui, interdum dui vel sit, lorem sem erat magna in justo, sed non et accumsan ut. Pretium viverra natoque, in sapien. Nunc lacinia, libero lorem nostra, condimentum mi id consequat. Eget mi cum, posuere sed, in velit sit justo fusce. Laoreet dictum id commodo similique. At eget tristique praesent sem, donec id per ultricies, egestas imperdiet mauris sed, at non quam magni mattis. Parturient nullam, etiam aenean consectetuer ornare aliquam, sed cum cras.'

# Blog.create([
# 	{ title: 'The Worst Advice About Meeting People', body: body, user_id: 1, image: '/images/blog1.png' },
# 	{ title: 'Why social connections are crucial for your mental health?', body: body, user_id: 1, image: '/images/blog2.png' },
# 	{ title: 'Why men need their buddies?', body: body, user_id: 1, image: '/images/blog3.png' },
# 	{ title: 'Pros and Cons of Socializing Outside Work', body: body, user_id: 1, image: '/images/blog4.png' },
# 	{ title: '6 Myths About Making New Friends', body: body, user_id: 1, image: '/images/blog5.png' },
# 	{ title: 'The quirkiest things to do in Manchester', body: body, user_id: 1, image: '/images/blog6.png' },
# ])

Category.create([
  { title: 'Food & Drinks', image: '/images/event-icon1.png', icon: 'http://localhost:3000/images/c-img1.png' },
  { title: 'Night Life', image: '/images/event-icon2.png', icon: 'http://localhost:3000/images/c-img2.png' },
  { title: 'Outdoors & Adventure', image: '/images/event-icon3.png', icon: 'http://localhost:3000/images/c-img3.png' },
  { title: 'Tech', image: '/images/event-icon4.png', icon: 'http://localhost:3000/images/c-img4.png' },
  { title: 'Self Improvement', image: '/images/event-icon5.png', icon: 'http://localhost:3000/images/c-img5.png' },
  { title: 'Sports', image: '/images/event-icon6.png', icon: 'http://localhost:3000/images/c-img6.png' },
  { title: 'Learning', image: '/images/event-icon7.png', icon: 'http://localhost:3000/images/c-img7.png' },
  { title: 'Travel', image: '/images/event-icon8.png', icon: 'http://localhost:3000/images/c-img8.png' },
  { title: 'Music & Dance', image: '/images/event-icon9.png', icon: 'http://localhost:3000/images/c-img9.png' },
  { title: 'Single\'s Only', image: '/images/event-icon10.png', icon: 'http://localhost:3000/images/c-img10.png' },
  { title: 'Family', image: '/images/event-icon11.png', icon: 'http://localhost:3000/images/c-img11.png' },
  { title: 'Health & Wellness', image: '/images/event-icon12.png', icon: 'http://localhost:3000/images/c-img12.png' },
  { title: 'Hobbies & Crafts', image: '/images/event-icon13.png', icon: 'http://localhost:3000/images/c-img13.png' },
  { title: 'Fashion & Beauty', image: '/images/event-icon14.png', icon: 'http://localhost:3000/images/c-img14.png' },
  { title: 'Film', image: '/images/event-icon15.png', icon: 'http://localhost:3000/images/c-img15.png' },
  { title: 'Beliefs', image: '/images/event-icon16.png', icon: 'http://localhost:3000/images/c-img16.png' },
  { title: 'LGBTQ', image: '/images/event-icon17.png', icon: 'http://localhost:3000/images/c-img17.png' },
  { title: 'Language & Culture', image: '/images/event-icon18.png', icon: 'http://localhost:3000/images/c-img18.png' },
  { title: 'Photography', image: '/images/event-icon19.png', icon: 'http://localhost:3000/images/c-img19.png' },
  { title: 'Book Club', image: '/images/event-icon20.png', icon: 'http://localhost:3000/images/c-img20.png' },
  { title: 'Pets', image: '/images/event-icon21.png', icon: 'http://localhost:3000/images/c-img21.png' },
  { title: 'Arts', image: '/images/event-icon22.png', icon: 'http://localhost:3000/images/c-img22.png' },
  { title: 'Seminar & Talks', image: '/images/event-icon23.png', icon: 'http://localhost:3000/images/c-img23.png' },
  { title: 'Freelance Community', image: '/images/event-icon24.png', icon: 'http://localhost:3000/images/c-img24.png' },
])
