# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Client.destroy_all

Instructor.destroy_all

Signup.destroy_all

Workout.destroy_all

Client.create({first_name: "Stacy", last_name: "Dillahey", email: "stacy@gmail.com", mobile_number: "484-574-2208", password: "stacy", password_confirmation: "stacy"})

# Workout.create({name: "Beginner's Flow", })

Instructor.create({name: "Ellie", image: "https://i.imgur.com/djqEvnL.jpg", bio: "Ellie joins Down Dog after beginning her practice
   five years ago while in Thailand. She enjoys playing with her pooch, cooking for friends, and spending as
    much time outside as possible. A lifelong music fan, expect to hear some of Ellie's favorite new tracks in class."})

Instructor.create({name: "Kaye", image: "https://i.imgur.com/YRSR6s2.jpg", bio: "Kaye was an avid runner and casually took classes at Down Dog
  to stay limber. After injury, Kaye took our teaching training course and it is with much excitement that we welcome her back after returning
  from New York. Kaye's favorite pose is <em>natarajasana</em> as it promotes mindfulness through focus."})
