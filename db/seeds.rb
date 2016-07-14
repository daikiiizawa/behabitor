# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

user01 = User.create(
    email: 'user01@example.com',
    password: 'password'
)

user02 = User.create(
    email: 'user02@example.com',
    password: 'password'
)