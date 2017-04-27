# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'date'
require 'active_support'

Signup.destroy_all

Client.destroy_all

Workout.destroy_all

Instructor.destroy_all


Client.create({first_name: "Admin", last_name: "Admin", email: "admin@downdogyoga.com", mobile_number: "301-364-3696", password: "ddyoga123", password_confirmation: "ddyoga123", is_admin: true})
Client.create({first_name: "Stacy", last_name: "Dillahey", email: "stacy@gmail.com", mobile_number: "484-574-2208", password: "stacy", password_confirmation: "stacy"})


i1 = Instructor.create({name: "Ellie", image: "https://i.imgur.com/djqEvnL.jpg", bio: "Ellie joins Downdog after beginning her practice
   five years ago while in Thailand. She enjoys playing with her pooch, cooking for friends, and spending as
    much time outside as possible. A lifelong music fan, expect to hear some of Ellie's favorite new tracks in class."})

i2 = Instructor.create({name: "Kaye", image: "https://i.imgur.com/YRSR6s2.jpg", bio: "Kaye was an avid runner and casually took classes at Downdog
  to stay limber. After injury, Kaye took our teaching training course and it is with much excitement that we welcome her back after returning
  from New York. Kaye's favorite pose is natarajasana as it promotes mindfulness through focus."})


Workout.create({name: "1 Beginner's Flow", instructor: i2, description: "An introductory vinyasa flow set to music in a heated studio.", time: DateTime.new(2017, 4, 28, 22, 0)})
Workout.create({name: "2 Power Yoga", instructor: i1, description: "Combines classic vinyasa with cardio in a sure-fire way to get your heart pumping.", time: DateTime.new(2017, 4, 28, 23, 0)})
Workout.create({name: "3 Candlelit Restorative", instructor: i1, description: "Unwind from the day by relaxing into meditative poses.", time: DateTime.new(2017, 4, 29, 3, 0)})
Workout.create({name: "4 Beginner's Flow", instructor: i2, description: "An introductory vinyasa flow set to music in a heated studio.", time: DateTime.new(2017, 5, 1, 17, 0)})
Workout.create({name: "5 Power Yoga", instructor: i1, description: "Combines classic vinyasa with cardio in a sure-fire way to get your heart pumping.", time: DateTime.new(2017, 5, 1, 19, 0)})
Workout.create({name: "6 Beginner's Flow", instructor: i2, description: "An introductory vinyasa flow set to music in a heated studio.", time: DateTime.new(2017, 5, 1, 22, 0)})
Workout.create({name: "7 Power Yoga", instructor: i1, description: "Combines classic vinyasa with cardio in a sure-fire way to get your heart pumping.", time: DateTime.new(2017, 5, 1, 1, 0)})
Workout.create({name: "8 Candlelit Restorative", instructor: i1, description: "Unwind from the day by relaxing into meditative poses.", time: DateTime.new(2017, 5, 2, 3, 0)})
Workout.create({name: "9 Beginner's Flow", instructor: i2, description: "An introductory vinyasa flow set to music in a heated studio.", time: DateTime.new(2017, 4, 26, 17, 0)})
Workout.create({name: "10 Power Yoga", instructor: i1, description: "Combines classic vinyasa with cardio in a sure-fire way to get your heart pumping.", time: DateTime.new(2017, 4, 26, 19, 0)})
Workout.create({name: "11 Candlelit Restorative", instructor: i1, description: "Unwind from the day by relaxing into meditative poses.", time: DateTime.new(2017, 4, 27, 3, 0)})
Workout.create({name: "12 Candlelit Restorative", instructor: i1, description: "Unwind from the day by relaxing into meditative poses.", time: DateTime.new(2017, 4, 25, 16, 0)})

