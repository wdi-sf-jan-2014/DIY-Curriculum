# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

category1 = Category.create(name: "art", img: "art.png")
category2 = Category.create(name: "education", img: "education.png")
category3 = Category.create(name: "science", img: "science.png")

category4 = Category.create(name: "philosophy", img: "philosophy.png")
category5 = Category.create(name: "cooking", img: "cooking.png")
category6 = Category.create(name: "history", img: "history.png")

category7 = Category.create(name: "writing", img: "writing.png")
category8 = Category.create(name: "mathematics", img: "mathmatics.png")
category9 = Category.create(name: "economics", img: "economics.png")

category10 = Category.create(name: "programming", img: "programming.png")
category11 = Category.create(name: "music", img: "music.png")
category12 = Category.create(name: "undecided", img: "owl_128.png")

content1 = Content.create(text: "first comment", source_url: "http://www.slate.com/articles/technology/bitwise/2014/02/apple_security_bug_a_critical_flaw_was_extraordinarily_simple.html")






###################Users Creation###########################

jerome = User.create(name: "Jerome Allouche", email: "jeromeallouche01@gmail.com", password: "jerome123", password_confirmation: "jerome123")
stephanie = User.create(name: "Stephanie Daffara", email: "stephanie@daffara.com", password: "stephanie123", password_confirmation: "stephanie123")
nina = User.create(name: "Nina Pacifico", email: "nina@pacifico.com", password: "nina123", password_confirmation: "nina123")
yutaka = User.create(name: "Yutaka Houlette", email: "yutaka@houlette.com", password: "yutaka123", password_confirmation: "yutaka123")





###################Courses Creation###########################

jerome_course = Course.create( title: "WDI through Videos",
                                        description: "Following the curriculum of what I learned at WDI
                                                      mainly through youtube videos.",
                                        author_id: jerome.id,
                                        category_id: 10,
                                      )

# ______________________ = Course.create( title: "_________________",
#                                         description: "______________________.",
#                                         author_id: ________.id,
#                                         category_id: __,
#                                       )


###################Sections Creation###########################
section1 = jerome_course.sections.create(  title: "The Command Line"  )
section2 = jerome_course.sections.create(  title: "File IO, arrays, hashes"  )
section3 = jerome_course.sections.create(  title: "Debugging"  )
section4 = jerome_course.sections.create(  title: "Methods & Blocks"  )
section5 = jerome_course.sections.create(  title: "Blocks, Proc, lambda"  )
section6 = jerome_course.sections.create(  title: "Rspec Testing"  )
section7 = jerome_course.sections.create(  title: "Intro to Internet and Web"  )
section8 = jerome_course.sections.create(  title: "JSON and APIs"  )
section9 = jerome_course.sections.create(  title: "HTML and CSS"  )
section10 = jerome_course.sections.create(  title: "Intro To Databases And SQL"  )
section11 = jerome_course.sections.create(  title: "Rails Controller and REST"  )
section12 = jerome_course.sections.create(  title: "User authentication and sessions"  )
section13 = jerome_course.sections.create(  title: "Rails View"  )
section14 = jerome_course.sections.create(  title: "Exploring the Model"  )
section15 = jerome_course.sections.create(  title: "JavaScript Intro"  )
section16 = jerome_course.sections.create(  title: "JavaScript Functions"  )
section17 = jerome_course.sections.create(  title: "Debugging part 2"  )
section18 = jerome_course.sections.create(  title: "Action Mailer"  )
section19 = jerome_course.sections.create(  title: "Rails TDD Intro"  )
section20= jerome_course.sections.create(  title: "Advanced ActiveRecord and to_json"  )
section21= jerome_course.sections.create(  title: "JavaScript BDD"  )


# ___________= ______________.sections.create(  title: "_______________"  )


