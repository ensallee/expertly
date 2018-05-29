# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

u1 = User.create(username: "ensallee", password: "password1", name: "Betsy Sallee", location: "Brooklyn", teacher: true, student: true)
u2 = User.create(username: "blevm", password: "password2", name: "Michelle Blevins", location: "Brooklyn", teacher: false, student: true)
u3 = User.create(username: "mendywoly", password: "password3", name: "Mendy Wolosow", location: "Brooklyn", teacher: true, student: true)
u4 = User.create(username: "eanorton", password: "password4", name: "Edward Norton", location: "Brooklyn", teacher: true, student: true)

code = Category.create(name: "Coding")
music = Category.create(name: "Music")
writing = Category.create(name: "Writing")

s1 = Skill.create(name: "Poetry", description: "Study contemporary poets and write poetry in a workshop", difficulty_level: "beginner", category: writing)
s2 = Skill.create(name: "Rails", description: "Learn Ruby on Rails, build an app like this exact website here.", difficulty_level: "expert", category: code)
s3 = Skill.create(name: "Nasty Beats", description: "Learn how to make nasty beats - very sick", difficulty_level: "advanced", category: music)
s4 = Skill.create(name: "Javascript", description: "Write some functions and vars and lots of semi-colons as many semi-colons as you can dream up bc you'll need all of them", difficulty_level: "advanced", category: code)

u1.skills << [s1]
u3.skills << [s2, s4]
u4.skills << [s3]
