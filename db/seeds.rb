# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user = User.create(email: "template@email.com", password: "12345678", name: "template")
page = Page.create(page_id: 0, name: "template page")

p user.errors
p page.errors

user.pages << page
partial1 = Partial.create(path: "title_text", name: "Title Text", item1: "Your Title Here")
partial2 = Partial.create(path: "two_for_three", name: "Two for Three", item1: "Input text here", item2: "And here...", item3: "Or even here!", item4: "http://res.cloudinary.com/memoryln/image/upload/v1431036123/test_images/lighthouse-93487_1280.jpg", item5: "http://res.cloudinary.com/memoryln/image/upload/v1431036123/test_images/lighthouse-93487_1280.jpg")
partial3 = Partial.create(path: "two_images", name: "Two Images", item1: "http://res.cloudinary.com/memoryln/image/upload/v1431036123/test_images/lighthouse-93487_1280.jpg", item2: "http://res.cloudinary.com/memoryln/image/upload/v1431036123/test_images/lighthouse-93487_1280.jpg")
partial4 = Partial.create(path: "three_images", name: "Three Images", item1: "http://res.cloudinary.com/memoryln/image/upload/v1431036123/test_images/lighthouse-93487_1280.jpg", item2: "http://res.cloudinary.com/memoryln/image/upload/v1431036123/test_images/lighthouse-93487_1280.jpg", item3: "http://res.cloudinary.com/memoryln/image/upload/v1431036123/test_images/lighthouse-93487_1280.jpg")
partial5 = Partial.create(path: "text_left_img_right", name: "Text Left Image Right", item1: "Your Text goes here", item2: "And here's another spot for text, just for fun!", item3: "http://res.cloudinary.com/memoryln/image/upload/v1431036123/test_images/lighthouse-93487_1280.jpg")
partial6 = Partial.create(path: "threes", name: "Threes", item1: "http://res.cloudinary.com/memoryln/image/upload/v1431036123/test_images/lighthouse-93487_1280.jpg")
partial7 = Partial.create(path: "rollin", name: "Rollin", item1: "http://res.cloudinary.com/memoryln/image/upload/v1431036123/test_images/lighthouse-93487_1280.jpg", item2: "http://res.cloudinary.com/memoryln/image/upload/v1431036123/test_images/lighthouse-93487_1280.jpg")
partial8 = Partial.create(path: "featured", name: "Featured", item1: "http://res.cloudinary.com/memoryln/image/upload/v1431036123/test_images/lighthouse-93487_1280.jpg")
partial9 = Partial.create(path: "collage", name: "Collage", item1: "http://res.cloudinary.com/memoryln/image/upload/v1431036123/test_images/lighthouse-93487_1280.jpg", item2: "http://res.cloudinary.com/memoryln/image/upload/v1431036123/test_images/lighthouse-93487_1280.jpg", item3: "http://res.cloudinary.com/memoryln/image/upload/v1431036123/test_images/lighthouse-93487_1280.jpg", item4: "http://res.cloudinary.com/memoryln/image/upload/v1431036123/test_images/lighthouse-93487_1280.jpg", item5: "Hey look, I'm text that can say what ever you want me to say!", item6: "http://res.cloudinary.com/memoryln/image/upload/v1431036123/test_images/lighthouse-93487_1280.jpg", item7: "http://res.cloudinary.com/memoryln/image/upload/v1431036123/test_images/lighthouse-93487_1280.jpg", item8: "http://res.cloudinary.com/memoryln/image/upload/v1431036123/test_images/lighthouse-93487_1280.jpg", item9: "http://res.cloudinary.com/memoryln/image/upload/v1431036123/test_images/lighthouse-93487_1280.jpg")
partial10 = Partial.create(path: "circle", name: "Circle", item1: "http://res.cloudinary.com/memoryln/image/upload/v1431036123/test_images/lighthouse-93487_1280.jpg", item2: "Look at this craaazzzy text!", item3: "http://res.cloudinary.com/memoryln/image/upload/v1431036123/test_images/lighthouse-93487_1280.jpg")

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

p1 = PagesPartial.find_by_partial_id(1)
p1.partial_order = 0
p1.save
p2 = PagesPartial.find_by_partial_id(2)
p2.partial_order = 1
p2.save
p3 = PagesPartial.find_by_partial_id(3)
p3.partial_order = 2
p3.save
p4 = PagesPartial.find_by_partial_id(4)
p4.partial_order = 3
p4.save
p5 = PagesPartial.find_by_partial_id(5)
p5.partial_order = 4
p5.save
p6 = PagesPartial.find_by_partial_id(6)
p6.partial_order = 5
p6.save
p7 = PagesPartial.find_by_partial_id(7)
p7.partial_order = 6
p7.save
p8 = PagesPartial.find_by_partial_id(8)
p8.partial_order = 7
p8.save
p9 = PagesPartial.find_by_partial_id(9)
p9.partial_order = 8
p9.save
p10 = PagesPartial.find_by_partial_id(10)
p10.partial_order = 9
p10.save



