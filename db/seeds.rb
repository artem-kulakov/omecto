# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

description = 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.'

Event.create([
               { title: 'Birthday', description: description, address: 'Red Square', date: '2019-06-30 07:10:00', categories: 'a,b', user_id: 1, location_id: 1 },
               { title: 'PHP Beer', description: description, address: 'Trafalgar Square', date: '2019-06-30 07:10:00', categories: 'b,c', user_id: 2, location_id: 2 },
               { title: 'Soccer', description: description, address: 'Alexander Platz', date: '2019-06-30 07:10:00', categories: 'c,d', user_id: 3, location_id: 3 },
               { title: 'Financial modelling', description: description, address: 'Lenin Street', date: '2019-06-30 07:10:00', categories: 'd,e', user_id: 4, location_id: 4 },
               { title: 'Rails Party', description: description, address: 'Some Street', date: '2019-06-30 07:10:00', categories: 'e,f', user_id: 5, location_id: 5 },
               { title: 'History Club', description: description, address: 'Alexander Platz', date: '2019-06-30 07:10:00', categories: 'f,g', user_id: 6, location_id: 6 }
             ])

body = 'Lorem ipsum dolor sit amet, sit mauris arcu neque ut, orci scelerisque iaculis amet et neque aliquam, aliquet enim enim. Neque diam vitae, vulputate diam, risus odio lacus, tellus vel. Pellentesque tincidunt dolor turpis ut, vitae aliquet diam lacus. Elit viverra urna proin tempor, amet et amet risus eu, purus nunc dolor aliquet luctus in, et viverra. At gravida vestibulum. Id morbi quisque vitae enim mauris, praesent in id ullamcorper mi dui, consequat ac luctus orci molestie, eu integer tortor tellus in metus metus, hendrerit eu dui interdum suspendisse nulla. Scelerisque dictum ligula, consequuntur dapibus accumsan est nulla tempus non. Egestas pulvinar velit magna leo nisl, eu sem etiam mauris, class erat tincidunt sit sem. Elementum eleifend, a pellentesque. Elit ipsum, neque nec ut sit. Nec justo ullamcorper felis viverra felis pellentesque, quisque nulla id amet volutpat sem, ultrices sed libero quod, fringilla quis, et ac justo ipsum. Diam ut ligula aptent dolor etiam, lobortis purus molestie adipiscing eget, torquent gravida quis maecenas vulputate eget ligula, leo lectus felis ante quis tortor, ante sed inventore cras hac egestas. Lorem tristique aptent a ullamcorper nibh, curae dolor adipiscing tellus nascetur. Eu purus, et vel vestibulum, dapibus erat tincidunt leo a libero, dui nulla sit lacus vel. Dignissim volutpat orci consequat neque nullam mauris, et sed, bibendum pellentesque sem eu fringilla wisi quis. Duis ac mattis amet, eget duis mollis aenean, in massa est dignissim ornare enim proin. Diam libero natoque magna mollis pellentesque luctus, sed sem morbi montes mauris, venenatis fringilla cursus luctus pellentesque tristique, vestibulum ac integer quam metus. Dapibus elementum, condimentum turpis porttitor et, lobortis convallis eros varius, lectus aptent non mauris turpis pretium curae, ligula urna elementum ante erat pede odio. Rutrum scelerisque libero ac integer eget volutpat, pellentesque erat, et sociis ligula urna cursus nam, condimentum semper ut quis consectetuer vivamus, rhoncus nec sed vestibulum. Lectus vel nulla faucibus mattis id, in porttitor sint, eget ipsum, magna urna eu nulla. In nec in enim quam ut, sodales pulvinar lectus. Turpis vel quam, nulla vitae tempus quis gravida, vel quis augue a massa, elit fermentum non nibh metus. Lectus amet, at integer at, malesuada dictum sociosqu ullamcorper facilisis fringilla, quam pellentesque tincidunt lobortis. At ultricies omnis consequat diam, mollit a consectetuer nullam. A pulvinar blandit nam eu sodales auctor. Platea quam non morbi quam wisi cras, pede fringilla nam suscipit suspendisse. Donec laoreet nam molestie, commodo in parturient a quam eu dui, eu iaculis per, ac habitasse ac mi vivamus eleifend lacinia. Wisi at sem massa. Maecenas quam eu magnis qui, interdum dui vel sit, lorem sem erat magna in justo, sed non et accumsan ut. Pretium viverra natoque, in sapien. Nunc lacinia, libero lorem nostra, condimentum mi id consequat. Eget mi cum, posuere sed, in velit sit justo fusce. Laoreet dictum id commodo similique. At eget tristique praesent sem, donec id per ultricies, egestas imperdiet mauris sed, at non quam magni mattis. Parturient nullam, etiam aenean consectetuer ornare aliquam, sed cum cras.'

# Blog.create([
#   { title: 'The Worst Advice About Meeting People', body: body, user_id: 1, image: '/images/blog1.png' },
#   { title: 'Why social connections are crucial for your mental health?', body: body, user_id: 1, image: '/images/blog2.png' },
#   { title: 'Why men need their buddies?', body: body, user_id: 1, image: '/images/blog3.png' },
#   { title: 'Pros and Cons of Socializing Outside Work', body: body, user_id: 1, image: '/images/blog4.png' },
#   { title: '6 Myths About Making New Friends', body: body, user_id: 1, image: '/images/blog5.png' },
#   { title: 'The quirkiest things to do in Manchester', body: body, user_id: 1, image: '/images/blog6.png' },
# ])

# Category.create([
#   { title: 'Food & Drinks', icon: '/images/event-icon1.png', image: '/images/c-img1.png', cat_id: 'a' },
#   { title: 'Night Life', icon: '/images/event-icon2.png', image: '/images/c-img2.png', cat_id: 'b' },
#   { title: 'Outdoors & Adventure', icon: '/images/event-icon3.png', image: '/images/c-img3.png', cat_id: 'c' },
#   { title: 'Tech', icon: '/images/event-icon4.png', image: '/images/c-img4.jpg', cat_id: 'd' },
#   { title: 'Self Improvement', icon: '/images/event-icon5.png', image: '/images/c-img5.jpg', cat_id: 'e' },
#   { title: 'Sports', icon: '/images/event-icon6.png', image: '/images/c-img6.jpg', cat_id: 'f' },
#   { title: 'Learning', icon: '/images/event-icon7.png', image: '/images/c-img7.jpg', cat_id: 'g' },
#   { title: 'Travel', icon: '/images/event-icon8.png', image: '/images/c-img9.jpg', cat_id: 'h' },
#   { title: 'Music & Dance', icon: '/images/event-icon9.png', image: '/images/c-img10.jpg', cat_id: 'i' },
#   { title: 'Single\'s Only', icon: '/images/event-icon10.png', image: '/images/c-img11.jpg', cat_id: 'j' },
#   { title: 'Family', icon: '/images/event-icon11.png', image: '/images/c-img12.jpg', cat_id: 'k' },
#   { title: 'Health & Wellness', icon: '/images/event-icon12.png', image: '/images/c-img13.jpg', cat_id: 'l' },
#   { title: 'Hobbies & Crafts', icon: '/images/event-icon13.png', image: '/images/c-img14.jpg', cat_id: 'm' },
#   { title: 'Fashion & Beauty', icon: '/images/event-icon14.png', image: '/images/c-img15.jpg', cat_id: 'n' },
#   { title: 'Film', icon: '/images/event-icon15.png', image: '/images/c-img16.jpg', cat_id: 'o' },
#   { title: 'Beliefs', icon: '/images/event-icon16.png', image: '/images/c-img17.jpg', cat_id: 'p' },
#   { title: 'LGBTQ', icon: '/images/event-icon17.png', image: '/images/c-img18.jpg', cat_id: 'q' },
#   { title: 'Language & Culture', icon: '/images/event-icon18.png', image: '/images/c-img19.jpg', cat_id: 'r' },
#   { title: 'Photography', icon: '/images/event-icon19.png', image: '/images/c-img20.jpg', cat_id: 's' },
#   { title: 'Book Club', icon: '/images/event-icon20.png', image: '/images/c-img21.jpg', cat_id: 't' },
#   { title: 'Pets', icon: '/images/event-icon21.png', image: '/images/c-img22.jpg', cat_id: 'u' },
#   { title: 'Arts', icon: '/images/event-icon22.png', image: '/images/c-img23.jpg', cat_id: 'v' },
#   { title: 'Seminar & Talks', icon: '/images/event-icon23.png', image: '/images/c-img24.jpg', cat_id: 'w' },
#   { title: 'Freelance Community', icon: '/images/event-icon24.png', image: '/images/c-img8.jpg', cat_id: 'x' },
# ])

# User.create(first_name: 'Holly', last_name: 'Christmas', email: "holly@gmail.com", password: "abc123", password_confirmation: "abc123")
# User.create(first_name: 'Rachel', last_name: 'Green', email: "iliketoshop@gmail.com", password: "abc123", password_confirmation: "abc123")
# User.create(first_name: 'Ross', last_name: 'Gellar', email: "ross123@hotmail.com", password: "abc123", password_confirmation: "abc123")
# User.create(first_name: 'Charlie', last_name: 'Brown', email: "charlie@gmail.com", password: "abc123", password_confirmation: "abc123")
# User.create(first_name: 'Lucy', last_name: 'van Pelt', email: "bluedresses4va@gmail.com", password: "abc123", password_confirmation: "abc123")

Location.create([
                  { city: 'Москва' },
                  { city: 'Серпухов' },
                  { city: 'Мытищи' },
                  { city: 'Истра, Московская область' },
                  { city: 'Владивосток' },
                  { city: 'Вильнюс' }
                ])
