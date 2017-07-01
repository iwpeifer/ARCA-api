# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(username: 'Isaac', password: "poop", email: "isaac.peifer@flatironschool.com")
User.create(username: 'Hersh', password: "poop", email: "hersh.patel@flatironschool.com")

Room.create(user_id: 1)
Room.create(user_id: 2)

Letter.create(room_id: 1, x: 0, y:0, content: "How is everybody else keeping their shit together so well?")
Letter.create(room_id: 1, x: 0, y:0, content: "Making a website from scratch is like mad hard lol -Leia")
Letter.create(room_id: 1, x: 0, y:0, content: "This too shall pass -Ancient Jewish Proverb")
Letter.create(room_id: 2, x: 0, y:0, content: "America's favorite porl skin snacks!")

Friendship.create(user_id: 1, friend_id: 2)
