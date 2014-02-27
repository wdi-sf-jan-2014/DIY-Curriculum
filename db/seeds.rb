# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

category1 = Category.create(name: "art", img: "art.png")
category2 = Category.create(name: "cooking", img: "cooking.png")
category3 = Category.create(name: "economics", img: "economics.png")

category4 = Category.create(name: "education", img: "education.png")
category5 = Category.create(name: "history", img: "history.png")
category6 = Category.create(name: "mathmatics", img: "mathmatics.png")

category7 = Category.create(name: "music", img: "music.png")
category8 = Category.create(name: "philosophy", img: "philosophy.png")
category9 = Category.create(name: "programming", img: "programming.png")

category10 = Category.create(name: "science", img: "science.png")
category11 = Category.create(name: "undecided", img: "owl_128.png")
category12 = Category.create(name: "writing", img: "writing.png")

content1 = Content.create(text: "first comment", source_url: "http://www.slate.com/articles/technology/bitwise/2014/02/apple_security_bug_a_critical_flaw_was_extraordinarily_simple.html")