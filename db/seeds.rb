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
  status: "host",
  # image_url: "/marc.jpg"
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
  status: "artist",
  # image_url: "/amelie.jpg"
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
  status: "artist",
  # image_url: "/amelie.jpg"
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
  status: "artist",
  # image_url: "/amelie.jpg"
)
amelie.save!
puts "created user #{amelie.username}"

santi = User.new(
  username: 'santi',
  email: 'santi@gigme.com',
  password: 'santi@gigme.com',
  first_name: 'Santi',
  last_name: 'The Champion',
  phone_number: '015736589485',
  status: "host",
  # image_url: "/marc.jpg"
)

santi.save!
puts "created user #{santi.username}"

puts "Creating user finished!"


# Creating VENUE seeds

puts 'Creating venues...'

venue1 = Venue.new(
  name: "Brauhaus Neulich",
  image_url: "https://lh5.googleusercontent.com/p/AF1QipPLEIZw135hjAcoCJPiXOmcWUXiuxKRXC8y-bDD=w1080-k-no",
  address: "Selchower Str. 20, 12049",
  contact_details: "Mail: brauhausneulich@venues.com",
  user_id: 5
)
venue1.save!
puts "Created #{venue1.name}"

venue2 = Venue.new(
  name: "Fuks Bar",
  image_url: "https://lh5.googleusercontent.com/p/AF1QipOtjujjkdgrbSLOvsVqYyxKtSwohDWPQLuAT5DI=w1080-k-no",
  address: "Hobrechtstraße 64, 12047",
  contact_details: "Mail: fuksbar@venues.com",
  user_id: 1
)
venue2.save!
puts "Created #{venue2.name}"

venue3 = Venue.new(
  name: "Rickenbacker’s Music-Inn",
  image_url: "https://www.top10berlin.de/sites/top10berlin.de/files/styles/juicebox/public/location/slider/2018/01/22/rickenbackers-music-inn_bars-mit-live-musik_top10berlin_foto_rickenbackers_1200x600_1_0.jpg?itok=PRWBGgCF",
  address: "Bundesallee 194B, 10717",
  contact_details: "Mail: RickenbackersMusic-Inn@venues.com",
  user_id: 1
)
venue3.save!
puts "Created #{venue3.name}"

venue4 = Venue.new(
  name: "Lyrik",
  image_url: "https://i.pinimg.com/736x/f6/a8/15/f6a8157d2ec1db9f35b0901fef62e398.jpg",
  address: "Kollwitzstraße 97, 10435",
  contact_details: "Mail: Lyrik@venues.com",
  user_id: 1
)
venue4.save!
puts "Created #{venue4.name}"

venue5 = Venue.new(
  name: "Cassiopeia",
  image_url: "https://cdn.eventinc.de/provider_pictures/pictures/000/235/345/cropped/eventlocation-cassiopeia-berlin.jpg?1579516932",
  address: "Revaler Str. 99, 10245",
  contact_details: "Mail: Cassiopeia@venues.com",
  user_id: 1
)
venue5.save!
puts "Created #{venue5.name}"

venue6 = Venue.new(
  name: "The Hat Bar Berlin",
  image_url: "https://thehatbar.de/wp-content/uploads/2020/04/Hat-bxSlider-01_1920x1000_01.jpg",
  address: "Lotte-Lenya-Bogen 550, 10623",
  contact_details: "Mail: TheHatBarBerlin@venues.com",
  user_id: 1
)
venue6.save!
puts "Created #{venue6.name}"

venue7 = Venue.new(
  name: "Yorckschlösschen",
  image_url: "https://helfen-shop.berlin/wp-content/uploads/2020/03/Yorckschlo%CC%88sschen_19032020.jpg",
  address: "Yorckstraße 15, 10965 ",
  contact_details: "Mail: Yorckschlösschen@venues.com",
  user_id: 1
)
venue7.save!
puts "Created #{venue7.name}"

venue8 = Venue.new(
  name: "Madame Claude",
  image_url: "https://www.berlin.de/binaries/adressen/71128/source/1355765612/624x468/",
  address: "Lübbener Str. 19, 10997 ",
  contact_details: "Mail: MadameClaude@venues.com",
  user_id: 1
)
venue8.save!
puts "Created #{venue8.name}"

venue9 = Venue.new(
  name: "Schokoladen",
  image_url: "https://www.top10berlin.de/sites/top10berlin.de/files/styles/list_image/public/location/mainimages/2014/06/16/fullsize_privatclub_betreiber4_2.jpg?itok=QVTBLOOG",
  address: "Ackerstraße 169, 10115 ",
  contact_details: "Mail: Schokoladen@venues.com",
  user_id: 1
)
venue9.save!
puts "Created #{venue9.name}"

venue10 = Venue.new(
  name: "FairytaleBar",
  image_url: "http://mitvergnuegen.com/wp-content/uploads/2015/07/fairytalebar-3-von-4.jpg",
  address: "Am Friedrichshain 24, 10407 ",
  contact_details: "Mail: FairytaleBar@venues.com",
  user_id: 1
)
venue10.save!
puts "Created #{venue10.name}"

venue11 = Venue.new(
  name: "Zig Zag Jazz Club Berlin",
  image_url: "https://images.squarespace-cdn.com/content/v1/55146be5e4b0392be71840b6/1432999631685-PKYLVMJTHJ4P9M7FEZCB/image-asset.gif?format=1000w",
  address: "Hauptstraße 89, 12159 ",
  contact_details: "Mail: ZigZagJazzClubBerlin@venues.com",
  user_id: 1
)
venue11.save!
puts "Created #{venue11.name}"

venue12 = Venue.new(
  name: "Bi Nuu",
  image_url: "https://www.theclubmap.com/wp-content/uploads/2013/05/Bi-Nuu-4.jpg",
  address: "U Schlesisches Tor",
  contact_details: "Mail: BiNuu@venues.com",
  user_id: 1
)
venue12.save!
puts "Created #{venue12.name}"

venue13 = Venue.new(
  name: "Eschschloraque",
  image_url: "https://www.eschschloraque.de/sites/default/files/pictures/Eschschloraque_Juli_2010_1B.jpg",
  address: "Rosenthaler Str. 39 - 2, 10178 ",
  contact_details: "Mail: Eschschloraque@venues.com",
  user_id: 1
)
venue13.save!
puts "Created #{venue13.name}"

venue14 = Venue.new(
  name: "Studio 8",
  image_url: "https://media-cdn.tripadvisor.com/media/photo-p/12/59/bc/5d/studio-8.jpg",
  address: "Grüntaler Str. 8, 13357 ",
  contact_details: "Mail: Studio8@venues.com",
  user_id: 1
)
venue14.save!
puts "Created #{venue14.name}"

venue15 = Venue.new(
  name: "Sowieso",
  image_url: "https://jazzity.net/img/sowieso01.jpg",
  address: "Weisestraße 24, 12049",
  contact_details: "Mail: Sowieso@venues.com",
  user_id: 1
)
venue15.save!
puts "Created #{venue15.name}"

venue16 = Venue.new(
  name: "Roadrunner's Paradise",
  image_url: "https://www.rockabilly-rules.com/blog/wp-content/uploads/2014/10/roadrunner_paradise-berlin.jpg",
  address: "Saarbrücker Str. 24, 10405 ",
  contact_details: "Mail: RoadrunnersParadise@venues.com",
  user_id: 1
)
venue16.save!
puts "Created #{venue16.name}"

puts "Creating venues finished!"

# Creating EVENT seeds

puts 'Creating events...'

date = Faker::Date.between(from: '2021-11-23', to: '2023-09-25')
event1 = Event.new(
  starts_at: date,
  ends_at: date + 1,
  venue_id: 1
)
event1.save!
puts "Created event1"
date2 = Faker::Date.between(from: '2021-11-23', to: '2023-09-25')
event2 = Event.new(
  starts_at: date2,
  ends_at: date2 + 1,
  venue_id: 1
)
event2.save!
puts "Created event2"
date3 = Faker::Date.between(from: '2021-11-23', to: '2023-09-25')
event3 = Event.new(
  starts_at: date3,
  ends_at: date3 + 1,
  venue_id: 1
)
event3.save!
puts "Created event3"
date = Faker::Date.between(from: '2021-11-23', to: '2023-09-25')
event4 = Event.new(
  starts_at: date,
  ends_at: date + 1,
  venue_id: 1
)
event4.save!
puts "Created event4"

30.times do
  date = Faker::Date.between(from: '2021-11-23', to: '2023-09-25')
  event = Event.new(
  starts_at: date,
  ends_at: date + 1,
  venue_id: rand(2..16)
)
event.save!
end
puts "created 30 events"
puts "Creating events finished!"

# Creating BOOKING seeds

puts 'Creating bookings...'

booking1 = Booking.new(
  status: 0,
  user_id: 2,
  event_id: 1
)
booking1.save!
puts "Created booking1"

booking2 = Booking.new(
  status: 1,
  user_id: 2,
  event_id: 2
)
booking2.save!
puts "Created booking2"

booking3 = Booking.new(
  status: 2,
  user_id: 2,
  event_id: 3
)
booking3.save!
puts "Created booking3"

booking4 = Booking.new(
  status: 3,
  user_id: 2,
  event_id: 4
)
booking4.save!
puts "Created booking4"

puts "Creating ArtistProfils"

ap1 = ArtistProfil.new(
  user_id: 2,
  youtube: "https://www.youtube.com/user/rihanna",
  soundcloud: "https://soundcloud.com/rhiannaofficial"
)
ap1.save!
puts "ap1 created"

ap2 = ArtistProfil.new(
  user_id: 4,
  youtube: "https://www.youtube.com/channel/UCehQT6NHMZjl0giIfY7f1mw",
  soundcloud: "https://soundcloud.com/edith-piaf-official"
)
ap2.save 
puts "ap2 created"

ap3 = ArtistProfil.new(
  user_id: 3,
  youtube: "https://www.youtube.com/c/marilynmanson",
  soundcloud: "https://soundcloud.com/marilynmanson"
)
ap3.save 
puts "ap3 created"

puts "Creating bookings finished!"
