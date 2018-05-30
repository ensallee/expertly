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

code = Category.create(name: "Coding")
music = Category.create(name: "Music")
writing = Category.create(name: "Writing")

s1 = Skill.create(name: "Poetry", difficulty_level: "beginner", category: writing)
s2 = Skill.create(name: "Rails", difficulty_level: "expert", category: code)
s3 = Skill.create(name: "Nasty Beats", difficulty_level: "advanced", category: music)
s4 = Skill.create(name: "Javascript", difficulty_level: "advanced", category: code)

UserSkill.create(user: u1, skill: s1, description: "Study contemporary poets and write poetry in a workshop")
UserSkill.create(user: u3, skill: s2, description: "Learn Ruby on Rails, build an app like this exact website here.")
UserSkill.create(user: u4, skill: s3, description: "Learn how to make nasty beats - very sick")
UserSkill.create(user: u3, skill: s4, description: "Write some functions and vars and lots of semi-colons as many semi-colons as you can dream up bc you'll need all of them")
UserSkill.create(user: u1, skill: s4, description: "Javascript is great everyone thinks so we love it really you can too")
