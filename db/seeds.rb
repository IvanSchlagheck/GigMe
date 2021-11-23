# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

# Creating USER seeds

puts 'Creating users...'

marc = User.new(
  username: 'marc',
  email: 'marc@gigme.com',
  password: '12345678',
  first_name: 'Marc',
  last_name: 'Rodenbusch',
  phone_number: '015736589485',
  status: "host"
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


# Creating VENUE seeds

puts 'Creating venues...'

venue1 = Venue.new(
  name: "Venue 1",
  image_url: "https://source.unsplash.com/random/300x200",
  address: "Musterstraße 1, 12345 Berlin",
  contact_details: "Mail: venue1@venues.com",
  user_id: 1
)
venue1.save!
puts "Created #{venue1.name}"

venue2 = Venue.new(
  name: "Venue 2",
  image_url: "https://source.unsplash.com/random/300x200",
  address: "Musterstraße 2, 12345 Berlin",
  contact_details: "Mail: venue2@venues.com",
  user_id: 1
)
venue2.save!
puts "Created #{venue2.name}"

venue3 = Venue.new(
  name: "Venue 3",
  image_url: "https://source.unsplash.com/random/300x200",
  address: "Musterstraße 3, 12345 Berlin",
  contact_details: "Mail: venue3@venues.com",
  user_id: 1
)
venue3.save!
puts "Created #{venue3.name}"

venue4 = Venue.new(
  name: "Venue 4",
  image_url: "https://source.unsplash.com/random/300x200",
  address: "Musterstraße 4, 12345 Berlin",
  contact_details: "Mail: venue4@venues.com",
  user_id: 1
)
venue4.save!
puts "Created #{venue4.name}"

venue5 = Venue.new(
  name: "Venue 5",
  image_url: "https://source.unsplash.com/random/300x200",
  address: "Musterstraße 5, 12345 Berlin",
  contact_details: "Mail: venue5@venues.com",
  user_id: 1
)
venue5.save!
puts "Created #{venue5.name}"

venue6 = Venue.new(
  name: "Venue 6",
  image_url: "https://source.unsplash.com/random/300x200",
  address: "Musterstraße 6, 12345 Berlin",
  contact_details: "Mail: venue6@venues.com",
  user_id: 1
)
venue6.save!
puts "Created #{venue6.name}"

venue7 = Venue.new(
  name: "Venue 7",
  image_url: "https://source.unsplash.com/random/300x200",
  address: "Musterstraße 7, 12345 Berlin",
  contact_details: "Mail: venue7@venues.com",
  user_id: 1
)
venue7.save!
puts "Created #{venue7.name}"

venue8 = Venue.new(
  name: "Venue 8",
  image_url: "https://source.unsplash.com/random/300x200",
  address: "Musterstraße 8, 12345 Berlin",
  contact_details: "Mail: venue8@venues.com",
  user_id: 1
)
venue8.save!
puts "Created #{venue8.name}"

venue9 = Venue.new(
  name: "Venue 9",
  image_url: "https://source.unsplash.com/random/300x200",
  address: "Musterstraße 9, 12345 Berlin",
  contact_details: "Mail: venue9@venues.com",
  user_id: 1
)
venue9.save!
puts "Created #{venue9.name}"

venue10 = Venue.new(
  name: "Venue 10",
  image_url: "https://source.unsplash.com/random/300x200",
  address: "Musterstraße 10, 12345 Berlin",
  contact_details: "Mail: venue10@venues.com",
  user_id: 1
)
venue10.save!
puts "Created #{venue10.name}"

venue11 = Venue.new(
  name: "Venue 11",
  image_url: "https://source.unsplash.com/random/300x200",
  address: "Musterstraße 11, 12345 Berlin",
  contact_details: "Mail: venue11@venues.com",
  user_id: 1
)
venue11.save!
puts "Created #{venue11.name}"

venue12 = Venue.new(
  name: "Venue 12",
  image_url: "https://source.unsplash.com/random/300x200",
  address: "Musterstraße 12, 12345 Berlin",
  contact_details: "Mail: venue12@venues.com",
  user_id: 1
)
venue12.save!
puts "Created #{venue12.name}"

venue13 = Venue.new(
  name: "Venue 13",
  image_url: "https://source.unsplash.com/random/300x200",
  address: "Musterstraße 13, 12345 Berlin",
  contact_details: "Mail: venue13@venues.com",
  user_id: 1
)
venue13.save!
puts "Created #{venue13.name}"

venue14 = Venue.new(
  name: "Venue 14",
  image_url: "https://source.unsplash.com/random/300x200",
  address: "Musterstraße 14, 12345 Berlin",
  contact_details: "Mail: venue14@venues.com",
  user_id: 1
)
venue14.save!
puts "Created #{venue14.name}"

venue15 = Venue.new(
  name: "Venue 15",
  image_url: "https://source.unsplash.com/random/300x200",
  address: "Musterstraße 15, 12345 Berlin",
  contact_details: "Mail: venue15@venues.com",
  user_id: 1
)
venue15.save!
puts "Created #{venue15.name}"

venue16 = Venue.new(
  name: "Venue 16",
  image_url: "https://source.unsplash.com/random/300x200",
  address: "Musterstraße 16, 12345 Berlin",
  contact_details: "Mail: venue16@venues.com",
  user_id: 1
)
venue16.save!
puts "Created #{venue16.name}"

puts "Creating venues finished!"

# Creating Events seeds

puts 'Creating events...'

event1 = Event.create(
  starts_at: Faker::Date.between(from: '2021-11-23', to: '2023-09-25'),
  ends_at: Faker::Date.between(from: '2021-11-23', to: '2023-09-25'),
  venue_id: 1
)

event2 = Event.create(
  starts_at: Faker::Date.between(from: '2021-11-23', to: '2023-09-25'),
  ends_at: Faker::Date.between(from: '2021-11-23', to: '2023-09-25'),
  venue_id: 1
)

event3 = Event.create(
  starts_at: Faker::Date.between(from: '2021-11-23', to: '2023-09-25'),
  ends_at: Faker::Date.between(from: '2021-11-23', to: '2023-09-25'),
  venue_id: 1
)

event4 = Event.create(
  starts_at: Faker::Date.between(from: '2021-11-23', to: '2023-09-25'),
  ends_at: Faker::Date.between(from: '2021-11-23', to: '2023-09-25'),
  venue_id: 1
)

puts "Created #{event4}"
puts "Created events"