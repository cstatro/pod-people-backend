# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
 u1 =User.find_or_create_by(name: "Birdman")
 u2 =User.find_or_create_by(name: "Kanye West")
 l1 = List.find_or_create_by(user: u1, name: "Birdbased Tunes")

 Follower.find_or_create_by(user: u2,list: l1)

 p1 = Podcast.find_or_create_by(name: "Peanutbutter Weekly")
 p2 = Podcast.find_or_create_by(name: "Monday Morning Podcast")

