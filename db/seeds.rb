# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

category1 = Category.create(name: "art")
category2 = Category.create(name: "education")
category3 = Category.create(name: "science")

category4 = Category.create(name: "philosophy")
category5 = Category.create(name: "cooking")
category6 = Category.create(name: "history")

category7 = Category.create(name: "writing")
category8 = Category.create(name: "mathmatics")
category9 = Category.create(name: "economics")

category10 = Category.create(name: "programming")
category11 = Category.create(name: "music")
category12 = Category.create(name: "undecided")

content1 = Content.create(text: "first comment", source_url: "http://www.slate.com/articles/technology/bitwise/2014/02/apple_security_bug_a_critical_flaw_was_extraordinarily_simple.html")
