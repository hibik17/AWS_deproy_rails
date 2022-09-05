# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do |i|
  User.create(
    name: "testuser#{i}",
    email: "aaa@aaa#{i}",
    description: "my name is testuser#{i}.",
    password: 'aaaaaa'
  )
end

Group.create(
  name: 'okinawa'
)

5.times do |i|
  GroupUser.create(
    group_id: 2,
    user_id: i.to_i
  )
end

User.create(
  name: 'John',
  email: 'aaa@aaa',
  description: 'my name is john',
  password: 'aaaaaa'
)
