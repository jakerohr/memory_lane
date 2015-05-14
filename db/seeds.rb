# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# CREATE NEW USER AND PAGES
user = User.create(email: "template@email.com", password: "12345678", name: "template")
page = Page.create(page_id: 0, name: "template page")
home_page = Page.create(page_id: 1, name: "home page")

p user.errors
p page.errors

user.pages << page
user.pages << home_page

# TEMPLATE PARTIALS
partial1 = Partial.create(path: "title_text", name: "Title Text", item1: "Your Title Here")
partial2 = Partial.create(path: "two_for_three", name: "Two for Three", item1: "Input text here", item2: "And here...", item3: "Or even here!", item4: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg", item5: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg")
partial3 = Partial.create(path: "two_images", name: "Two Images", item1: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg", item2: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg")
partial4 = Partial.create(path: "three_images", name: "Three Images", item1: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg", item2: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg", item3: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg")
partial5 = Partial.create(path: "text_left_img_right", name: "Text Left Image Right", item1: "Your Text goes here", item2: "And here's another spot for text, just for fun!", item3: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg")
partial6 = Partial.create(path: "threes", name: "Threes", item1: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg")
partial7 = Partial.create(path: "rollin", name: "Rollin", item1: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg", item2: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg")
partial8 = Partial.create(path: "featured", name: "Featured", item1: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg", item2: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis a ligula dolor. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Suspendisse ullamcorper mauris quis enim faucibus elementum. Donec ultrices arcu at pulvinar porta. Morbi dignissim lacus quis odio feugiat, pretium suscipit nunc dignissim. Cras ac semper ligula.")
partial9 = Partial.create(path: "collage", name: "Collage", item1: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg", item2: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg", item3: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg", item4: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg", item5: "Hey look, I'm text that can say what ever you want me to say!", item6: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg", item7: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg", item8: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg", item9: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg")
partial10 = Partial.create(path: "pair", name: "Pair & Text", item1: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg", item2: "Look at this craaazzzy text!", item3: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg")

partial11 = Partial.create(path: "title_text_top", name: "Title Text Top", item1: "Your Title Here")
partial12 = Partial.create(path: "title_subtitle", name: "Title & Subtitle", item1: "Your Title Here", item2: "...and you can add even more cool text here too!")
partial13 = Partial.create(path: "welcome", name: "Welcome", item1: "Welcome", item2: "to", item3: "Memory", item4: "Lane", item5: "(scroll down)")
# Text overlay for image upload
# l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/


page.partials << partial1
page.partials << partial2
page.partials << partial3
page.partials << partial4
page.partials << partial5
page.partials << partial6
page.partials << partial7
page.partials << partial8
page.partials << partial9
page.partials << partial10
page.partials << partial11
page.partials << partial12
page.partials << partial13
user.partials << partial1
user.partials << partial2
user.partials << partial3
user.partials << partial4
user.partials << partial5
user.partials << partial6
user.partials << partial7
user.partials << partial8
user.partials << partial9
user.partials << partial10
user.partials << partial11
user.partials << partial12
user.partials << partial13

p1 = PagesPartial.find_by_partial_id(1)
p1.partial_order = 0
p1.save
p11 = PagesPartial.find_by_partial_id(11)
p11.partial_order = 1
p11.save
p12 = PagesPartial.find_by_partial_id(12)
p12.partial_order = 2
p12.save
p2 = PagesPartial.find_by_partial_id(2)
p2.partial_order = 3
p2.save
p3 = PagesPartial.find_by_partial_id(3)
p3.partial_order = 4
p3.save
p4 = PagesPartial.find_by_partial_id(4)
p4.partial_order = 5
p4.save
p5 = PagesPartial.find_by_partial_id(5)
p5.partial_order = 6
p5.save
p6 = PagesPartial.find_by_partial_id(6)
p6.partial_order = 7
p6.save
p7 = PagesPartial.find_by_partial_id(7)
p7.partial_order = 8
p7.save
p8 = PagesPartial.find_by_partial_id(8)
p8.partial_order = 9
p8.save
p9 = PagesPartial.find_by_partial_id(9)
p9.partial_order = 10
p9.save
p10 = PagesPartial.find_by_partial_id(10)
p10.partial_order = 11
p10.save
p13 = PagesPartial.find_by_partial_id(13)
p13.partial_order = 12
p13.save

t1 = Background.create(bg_class: 'blue-gradiant', bg_name: 'Blue')
t2 = Background.create(bg_class: 'teal-gradiant', bg_name: 'Teal')
t3 = Background.create(bg_class: 'baby-blue-gradiant', bg_name: 'Baby Blue')
t4 = Background.create(bg_class: 'lime-green-gradiant', bg_name: 'Lime Green')
t5 = Background.create(bg_class: 'black-gradiant', bg_name: 'Black')
t6 = Background.create(bg_class: 'rust-gradiant', bg_name: 'Rust')
t7 = Background.create(bg_class: 'green-gradiant', bg_name: 'Green')
t8 = Background.create(bg_class: 'silver-gradiant', bg_name: 'Silver')
t9 = Background.create(bg_class: 'gold-gradiant', bg_name: 'Gold')
t10 = Background.create(bg_class: 'red-gradiant', bg_name: 'Red')
t11 = Background.create(bg_class: 'midnight-gradiant', bg_name: 'Midnight')
t12 = Background.create(bg_class: 'purple-gradiant', bg_name: 'Purple')
t13 = Background.create(bg_class: 'pink-gradiant', bg_name: 'Pink')
t14 = Background.create(bg_class: 'steel-blue-gradiant', bg_name: 'Steel Blue')
t15 = Background.create(bg_class: 'forest-green-gradiant', bg_name: 'Forest Green')
t16 = Background.create(bg_class: 'hot-pink-gradiant', bg_name: 'Hot Pink')
t17 = Background.create(bg_class: 'white-gradiant', bg_name: 'White')


t17.pages << page


# HOMEPAGE PARTIALS

home1 = Partial.create(path: "welcome", name: "Welcome", item1: "Welcome", item2: "to", item3: "Memory", item4: "Lane", item5: "(scroll down)")
home2 = Partial.create(path: "title_text", name: "Title Text", item1: "Your Title Here")

home_page.partials << home1
home_page.partials << home2

h1 = PagesPartial.find_by_partial_id(1)
h1.partial_order = 0
h1.save
h2 = PagesPartial.find_by_partial_id(2)
h2.partial_order = 1
h2.save

t17.pages << home_page
