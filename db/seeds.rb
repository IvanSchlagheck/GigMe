# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Creating users...'

marc = User.new(
  username: 'marc',
  email: 'marc@gigme.com',
  password: '12345678',
  first_name: 'Marc',
  last_name: 'Rodenbusch',
  phone_number: '015736589485',
  status: "artist"
)
marc.save!
puts "created user #{marc.username}"

ivan = User.new(
  username: 'ivan',
  email: 'ivan@gigme.com',
  password: '12345678',
  first_name: 'Ivan',
  last_name: 'Schlagheck',
  phone_number: '0123456789',
  status: "artist"
)
ivan.save!
puts "created user #{ivan.username}"

damian = User.new(
  username: 'damian',
  email: 'damian@gigme.com',
  password: '12345678',
  first_name: 'Damian',
  last_name: 'Beissel',
  phone_number: '01791317541',
  status: "artist"
)
damian.save!
puts "created user #{damian.username}"

amelie = User.new(
  username: 'amelie',
  email: 'amelie@gigme.com',
  password: '12345678',
  first_name: 'Amelie',
  last_name: "D'arenberg",
  phone_number: '0123456789',
  status: "artist"
)
amelie.save!
puts "created user #{amelie.username}"

puts "Creating user finished!"
