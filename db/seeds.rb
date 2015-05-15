# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# CREATE NEW USER AND PAGES
user = User.create(email: "template@email.com", password: "12345678", name: "template")
cody = User.create(email: "codybarrus@gmail.com", password: "testtest", name: "template")
page = Page.create(page_id: 0, name: "template page")
home_page = Page.create(page_id: 1, name: "home page")
new_page = Page.create(page_id: 2, name: "new page model")

p user.errors
p page.errors

user.pages << page
user.pages << home_page
user.pages << new_page

# TEMPLATE PARTIALS
partial1 = Partial.create(path: "title_text", name: "Title Text", item1: "Click to add Your Title Here")
partial2 = Partial.create(path: "two_for_three", name: "Two Images & Text", item1: "Click to add text here", item2: "And here...", item3: "Or even here!", item4: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431650296/3/uzwnjawz0k62eurckyyj.jpg", item5: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431647116/3/xnnfq4dyvykkcjlzxcft.jpg")
partial3 = Partial.create(path: "two_images", name: "Two Images", item1: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431646885/3/hfvsp56cirrpdjz8gawl.jpg", item2: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431473782/2/ezgmv9yvueddxfun06kn.jpg")
partial4 = Partial.create(path: "three_images", name: "Three Images", item1: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431460730/2/pjepkdb6rbitqxhc5kt6.jpg", item2: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431556906/2/ovgi2riyttieuhmi7i2j.jpg", item3: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg")
partial5 = Partial.create(path: "text_left_img_right", name: "Text Left Image Right", item1: "Click to add your text here", item2: "And here's another spot for text, just for fun!", item3: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg")
partial6 = Partial.create(path: "threes", name: "Threes", item1: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg")
partial7 = Partial.create(path: "two_fade_in", name: "Two Fade In", item1: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg", item2: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg")
partial8 = Partial.create(path: "featured", name: "Featured", item1: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg", item2: "Using Memory Ln is easy. You build pages by adding blocks which contain customizable animated text and images. Want a longer, better, and all around cooler page? Add more blocks by clicking the '+' button on the left. Change text and images by clicking them. Drag and drop the elements on the side bar to rearrange the page. It's easy! Oh, and don't forget to share with your friends.")
partial9 = Partial.create(path: "collage", name: "Collage", item1: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg", item2: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg", item3: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg", item4: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg", item5: "Hey look, I'm text that can say what ever you want me to say!", item6: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg", item7: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg", item8: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg", item9: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg")
partial10 = Partial.create(path: "pair", name: "Pair & Text", item1: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg", item2: "Look at this craaazzzy text!", item3: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_90_bold:Click to Upload Photo,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg")
partial11 = Partial.create(path: "title_text_top", name: "Title Text Top", item1: "Your Title Here")
partial12 = Partial.create(path: "title_subtitle", name: "Title & Subtitle", item1: "Click to add Your Title Here", item2: "...and you can add even more cool text here too!")
partial13 = Partial.create(path: "welcome", name: "Welcome", item1: "Welcome", item2: "to", item3: "Memory", item4: "Lane", item5: "(scroll down)")
partial14 = Partial.create(path: "story", name: "Story", item1: "Tell Your Story", item2: "through customizable", item3: "TEXT", item4: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_150_bold:And Images!,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg")
partial15 = Partial.create(path: "sliders", name: "Sliders", item1: "Tell", item2: "Stories", item3: "About", item4: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_150_bold:Babies!,co_rgb:020205,o_65/v1431653754/3/xbsfygwzm4hp0yvkvn4q.jpg", item5: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_400_bold:Music!,co_rgb:DFDFDF,o_65/v1431658115/3/p1y5sha4enpez22nlwgn.jpg", item6: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_350_bold:Puppies!,co_rgb:020205,o_65/v1431451084/2/bimnfdzfqqliaifdsimb.jpg", item7: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_150_bold:Selfies!,co_rgb:DFDFDF,o_65/v1431647275/3/h2svtunn80tuzzzwnugh.jpg")
partial16 = Partial.create(path: "spinner", name: "Spinner", item1: "To get started, just sign in and click 'Create New Page' at the top of your screen.", item2: "Enjoy!")


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
page.partials << partial14
page.partials << partial15
page.partials << partial16
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
user.partials << partial14
user.partials << partial15
user.partials << partial16

p13 = PagesPartial.find_by_id(13)
p13.partial_order = 0
p13.save
p8 = PagesPartial.find_by_id(8)
p8.partial_order = 1
p8.save
p1 = PagesPartial.find_by_id(1)
p1.partial_order = 2
p1.save
p11 = PagesPartial.find_by_id(11)
p11.partial_order = 3
p11.save
p12 = PagesPartial.find_by_id(12)
p12.partial_order = 4
p12.save
p2 = PagesPartial.find_by_id(2)
p2.partial_order = 5
p2.save
p3 = PagesPartial.find_by_id(3)
p3.partial_order = 6
p3.save
p4 = PagesPartial.find_by_id(4)
p4.partial_order = 7
p4.save
p5 = PagesPartial.find_by_id(5)
p5.partial_order = 8
p5.save
p6 = PagesPartial.find_by_id(6)
p6.partial_order = 9
p6.save
p7 = PagesPartial.find_by_id(7)
p7.partial_order = 10
p7.save
p9 = PagesPartial.find_by_id(9)
p9.partial_order = 11
p9.save
p10 = PagesPartial.find_by_id(10)
p10.partial_order = 12
p10.save
p14 = PagesPartial.find_by_id(14)
p14.partial_order = 13
p14.save
p15 = PagesPartial.find_by_id(15)
p15.partial_order = 14
p15.save
p16 = PagesPartial.find_by_id(16)
p16.partial_order = 15
p16.save



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
home2 = Partial.create(path: "story", name: "Story", item1: "Tell Your Story", item2: "through customizable", item3: "TEXT", item4: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_150_bold:And Images!,co_rgb:020205,o_65/v1431036123/test_images/lighthouse-93487_1280.jpg")
home3 = Partial.create(path: "sliders", name: "Sliders", item1: "Tell", item2: "Stories", item3: "About", item4: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_150_bold:Babies!,co_rgb:020205,o_65/v1431653754/3/xbsfygwzm4hp0yvkvn4q.jpg", item5: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_400_bold:Music!,co_rgb:DFDFDF,o_65/v1431658115/3/p1y5sha4enpez22nlwgn.jpg", item6: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_350_bold:Puppies!,co_rgb:020205,o_65/v1431451084/2/bimnfdzfqqliaifdsimb.jpg", item7: "http://res.cloudinary.com/memoryln/image/upload/l_text:Montserrat_150_bold:Selfies!,co_rgb:DFDFDF,o_65/v1431647275/3/h2svtunn80tuzzzwnugh.jpg")
home4 = Partial.create(path: "spinner", name: "Spinner", item1: "To get started, just sign in and click 'Create New Page' at the top of your screen.", item2: "Enjoy!")


home_page.partials << home1
home_page.partials << home2
home_page.partials << home3
home_page.partials << home4
user.partials << home1
user.partials << home2
user.partials << home3
user.partials << home4

h1 = PagesPartial.find_by_id(19)
h1.partial_order = 0
h1.save
h2 = PagesPartial.find_by_id(20)
h2.partial_order = 1
h2.save
h3 = PagesPartial.find_by_id(21)
h3.partial_order = 2
h3.save
h3 = PagesPartial.find_by_id(22)
h3.partial_order = 3
h3.save

t1.pages << home_page

# NEW PAGE
new_page.partials << partial13
new_page.partials << partial14
new_page.partials << partial15
new_page.partials << partial16
new_page.partials << partial8
user.partials << partial13
user.partials << partial14
user.partials << partial15
user.partials << partial16
user.partials << partial8

n1 = PagesPartial.find_by_id(17)
n1.partial_order = 0
n1.save
n2 = PagesPartial.find_by_id(18)
n2.partial_order = 1
n2.save
