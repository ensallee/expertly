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

tech_code = Category.create(name: "Tech & Coding")
music = Category.create(name: "Music")
writing = Category.create(name: "Writing")
health = Category.create(name: "Health")
cooking = Category.create(name: "Cooking")
business = Category.create(name: "Business")
lifestyle = Category.create(name: "Lifestyle")
art_design = Category.create(name: "Art & Design")
foreign_language = Category.create(name: "Foreign Language")
math_science = Category.create(name: "Math & Science")


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



UserSkill.create(user: u1, skill: s1, description: "Study contemporary poets and write poetry in a workshop")
UserSkill.create(user: u3, skill: s2, description: "Learn Ruby on Rails, build an app like this exact website here.")
UserSkill.create(user: u4, skill: s3, description: "Learn how to make nasty beats - very sick")
UserSkill.create(user: u3, skill: s4, description: "Write some functions and vars and lots of semi-colons as many semi-colons as you can dream up bc you'll need all of them")
UserSkill.create(user: u1, skill: s9, description: "Knit a scarf and other things!")
UserSkill.create(user: u3, skill: s8, description: "Get your finances in order!")
UserSkill.create(user: u4, skill: s2, description: "Were gonna go off the rails, on Rails!")
UserSkill.create(user: u4, skill: s12, description: "Cells and stuff....")
UserSkill.create(user: u1, skill: s14, description: "Hola! Learn how to speak Spanish with me!")
