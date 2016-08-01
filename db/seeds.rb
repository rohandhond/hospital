# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!([
 {
   name: 'Larry',
   age: 20,
   email: 'larry@example.com',
   password: 'secret',
   password_confirmation: 'secret'
 },
 {
   name: 'Moe',
   age: 25,
   email: 'moe@example.com',
   password: 'secret',
   password_confirmation: 'secret'
 },
 {
   name: 'Page',
   age: 24,
   email: 'page@example.com',
   password: 'secret',
   password_confirmation: 'secret'
 },
 {
   name: 'Jack',
   age: 20,
   email: 'jack@example.com',
   password: 'secret',
   password_confirmation: 'secret'
 },

])

user1 = User.find_by(name: 'Larry')
user1.profile = Doctor.create
user1.save

user2 = User.find_by(name: 'Moe')
user2.profile = Doctor.create
user2.save

user3 = User.find_by(name: 'Jack')
user3.profile = Patient.create(address: '600 W Chicago Chicago, IL USA', doctor_id: user1.profile_id)
user3.save

user4 = User.find_by(name: 'Page')
user4.profile = Patient.create(address: '100 W Chicago Chicago, IL USA', doctor_id: user2.profile_id)
user4.save




