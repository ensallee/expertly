# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Category.destroy_all
Skill.destroy_all
UserSkill.destroy_all


u1 = User.create(username: "ensallee", password: "password", name: "Betsy Sallee", location: "Brooklyn", teacher: true, student: true)
u2 = User.create(username: "blevm", password: "password", name: "Michelle Blevins", location: "Brooklyn", teacher: false, student: true)
u3 = User.create(username: "mendywoly", password: "password", name: "Mendy Wolosow", location: "Brooklyn", teacher: true, student: true)
u4 = User.create(username: "eanorton", password: "password", name: "Edward Norton", location: "Brooklyn", teacher: true, student: true)

tech_code = Category.create(name: "Tech & Coding", img: "https://images.unsplash.com/photo-1502951682449-e5b93545d46e?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=86dcc4a537932173561d30a24657fdc3&auto=format&fit=crop&w=966&q=80")
music = Category.create(name: "Music", img: "https://images.unsplash.com/photo-1475744214834-0cb9be6eb226?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=35d21091ad60e51e8f62b91cd193eecc&auto=format&fit=crop&w=750&q=80")
writing = Category.create(name: "Writing", img: "https://images.unsplash.com/photo-1520406417199-392fcce8587d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=701a7d1e9784d877fdc5a375447369d6&auto=format&fit=crop&w=2100&q=80")
health = Category.create(name: "Health", img: "https://images.unsplash.com/photo-1448387473223-5c37445527e7?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=ea8318e76d8a937340607769a8d40dcd&auto=format&fit=crop&w=500&q=60")
cooking = Category.create(name: "Cooking", img: "https://images.unsplash.com/photo-1518779578993-ec3579fee39f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=37f8178994660c8bace76993a937307c&auto=format&fit=crop&w=975&q=80")
business = Category.create(name: "Business", img: "https://images.unsplash.com/photo-1519033093166-cc076527fd0d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=2139e0cd284f5795ea39422f2c3e6939&auto=format&fit=crop&w=2100&q=80")
lifestyle = Category.create(name: "Lifestyle", img: "https://images.unsplash.com/photo-1470274038469-958113db2384?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=319a6ecef4a2d0d85fac426f827179ef&auto=format&fit=crop&w=1275&q=80")
art_design = Category.create(name: "Art & Design", img: "https://images.unsplash.com/photo-1501179426689-0c2bc49a6776?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=f3a9cc1d2d68267584af44141528b14d&auto=format&fit=crop&w=1038&q=80")
foreign_language = Category.create(name: "Foreign Language", img: "https://images.unsplash.com/photo-1467688695332-6b486449d78f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=dd2e0ad772fc8cf225eaf2b51e67385a&auto=format&fit=crop&w=753&q=80")
math_science = Category.create(name: "Math & Science", img:  "https://images.unsplash.com/photo-1524684009724-bee13ad8305f?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=44d6bb061401465e87141f249b228a7f&auto=format&fit=crop&w=500&q=60")


s1 = Skill.create(name: "Poetry", category: writing)
s2 = Skill.create(name: "Rails", category: tech_code)
s3 = Skill.create(name: "Nasty Beats", category: music)
s4 = Skill.create(name: "Javascript", category: tech_code)
s5 = Skill.create(name: "Baking", category: cooking)
s6 = Skill.create(name: "Yoga", category: health)
s7 = Skill.create(name: "Resume Building", category: business)
s8 = Skill.create(name: "Personal Finance", category: business)
s9 = Skill.create(name: "Knitting", category: art_design)
s10 = Skill.create(name: "Piano", category: music)
s11 = Skill.create(name: "Calculus", category: math_science)
s12 = Skill.create(name: "Biology", category: math_science)
s13 = Skill.create(name: "French", category: foreign_language)
s14 = Skill.create(name: "Spanish", category: foreign_language)
s15 = Skill.create(name: "Home Improvement", category: lifestyle)


us1 = UserSkill.create(user: u1, skill: s1, description: "Study contemporary poets and write poetry in a workshop")

us2 = UserSkill.create(user: u3, skill: s2, description: "Learn Ruby on Rails so you too can build an app like this exact website here.")
us17 = UserSkill.create(user: u4, skill: s2, description: "Were gonna go off the rails, on Rails!")

us3 = UserSkill.create(user: u4, skill: s3, description: "Learn how to make nasty beats - very sick")

us4 = UserSkill.create(user: u3, skill: s4, description: "Write some functions and vars and lots of semi-colons")
UserSkill.create(user: u1, skill: s4, description: "Advanced Javascript - everything you need to know to be a JS developer")

us10 = UserSkill.create(user: u1, skill: s5, description: "This course is better than watching the Great British Bake Off.")
UserSkill.create(user: u1, skill: s5, description: "Advanced Baking Course feat. Souffles")

us11 = UserSkill.create(user: u3, skill: s6, description: "You might be good at shavasana now, but you'll be good at it all after you finish this course!")
UserSkill.create(user: u1, skill: s6, description: "Chair Yoga - Relaxing at Work and Improving Your Posture")

us12 = UserSkill.create(user: u1, skill: s7, description: "Put your best foot forward by learning how to step up your resume.")
us12 = UserSkill.create(user: u4, skill: s7, description: "Job searching overseas? Learn how to write a top-notch CV.")

us13 = UserSkill.create(user: u4, skill: s8, description: "Learn how to become a billionaire in 5 easy steps")
us16 = UserSkill.create(user: u3, skill: s8, description: "Get your finances in order!")
us6 = UserSkill.create(user: u3, skill: s8, description: "Money and how to grow it from trees")

us14 = UserSkill.create(user: u3, skill: s9, description: "Knit yourself a hat")
us15 = UserSkill.create(user: u1, skill: s9, description: "Knit a scarf and other things!")

us5 = UserSkill.create(user: u1, skill: s10, description: "You must learn your scales and your arpeggios")
us8 = UserSkill.create(user: u4, skill: s10, description: "We'll start with Chopsticks and end with Chopin")

us9 = UserSkill.create(user: u1, skill: s11, description: "The limit does not exist to what you will learn in this course!")

us18 = UserSkill.create(user: u4, skill: s12, description: "Cells and stuff....")
UserSkill.create(user: u4, skill: s12, description: "Dissect an animal just like you did in 9th grade!")

us19 = UserSkill.create(user: u1, skill: s13, description: "Bonjour! Learn some French with me.")
UserSkill.create(user: u1, skill: s14, description: "Hola! Learn how to speak Spanish with me!")
UserSkill.create(user: u4, skill: s14, description: "Conversational Spanish for Beginners")

UserSkill.create(user: u4, skill: s15, description: "How to fix everything in your house when it inevitably breaks")

c1 = Course.create(user: u3, user_skill: us1)
c2 = Course.create(user: u4, user_skill: us1)
c3 = Course.create(user: u1, user_skill: us2)
c4 = Course.create(user: u1, user_skill: us3)
c5 = Course.create(user: u4, user_skill: us6)

Review.create(user_id: 1, rating: 5, content: "WOW Betsy was an amazing teacher! I would take another class from her anytime!")
Review.create(user_id: 1, rating: 3, content: "The topic is dumb and Betsy is okay")
Review.create(user_id: 1, rating: 4, content: "I learned so much!")
Review.create(user_id: 3, rating: 5, content: "Mendy is super smart and enthusiastic. I had a great time learning from him.")
Review.create(user_id: 3, rating: 4, content: "Mendy was a great teacher but the subject was so hard! I will never be a billionaire!")
Review.create(user_id: 4, rating: 3, content: "Ed was fine. It was fine.")
Review.create(user_id: 4, rating: 5, content: "Ed is an international treasure. Taking any course from him will change your life.")
