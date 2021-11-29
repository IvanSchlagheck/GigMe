# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require "open-uri"

# Creating USER seeds

puts 'Creating users...'

file = URI.open('https://image.gala.de/22313448/t/EN/v3/w1440/r1/-/rihanna.jpg')
marc = User.new(
  username: 'marc',
  email: 'marc@gigme.com',
  password: '12345678',
  first_name: 'Marc',
  last_name: 'Rodenbusch',
  phone_number: '015736589485',
  status: "host",
)
marc.photo.attach(io: file, filename: 'marc.png', content_type: 'image/png')
marc.save!
puts "created user #{marc.username}"

file = URI.open('https://i.scdn.co/image/ab6761610000e5eba225fabac2fa170e58d68c34')
ivan = User.new(
  username: 'ivan',
  email: 'ivan@gigme.com',
  password: '12345678',
  first_name: 'Ivan',
  last_name: 'Schlagheck',
  phone_number: '0123456789',
  status: "artist",
)
ivan.photo.attach(io: file, filename: 'ivan.png', content_type: 'image/png')
ivan.save!
puts "created user #{ivan.username}"

file = URI.open('https://www.ndr.de/media/michael262_v-quadratxl.jpg')
damian = User.new(
  username: 'damian',
  email: 'damian@gigme.com',
  password: '12345678',
  first_name: 'Damian',
  last_name: 'Beissel',
  phone_number: '01791317541',
  status: "artist",
)
damian.photo.attach(io: file, filename: 'damian.png', content_type: 'image/png')
damian.save!
puts "created user #{damian.username}"

file = URI.open('https://www.tierchenwelt.de/images/stories/fotos/saeugetiere/beuteltiere/quokka/quokka_happy_l.jpg')
amelie = User.new(
  username: 'amelie',
  email: 'amelie@gigme.com',
  password: '12345678',
  first_name: 'Amelie',
  last_name: "D'arenberg",
  phone_number: '0123456789',
  status: "artist",
)
amelie.photo.attach(io: file, filename: 'amelie.png', content_type: 'image/png')
amelie.save!
puts "created user #{amelie.username}"

file = URI.open('https://image.gala.de/22543710/t/MS/v8/w960/r0.6667/-/beauty-geheimnisse-beyonce.jpg')
santi = User.new(
  username: 'santi',
  email: 'santi@gigme.com',
  password: 'santi@gigme.com',
  first_name: 'Santi',
  last_name: 'The Champion',
  phone_number: '015736589485',
  status: "host",
)
santi.photo.attach(io: file, filename: 'santi.png', content_type: 'image/png')
santi.save!
puts "created user #{santi.username}"

puts "Creating user finished!"

puts 'Creating 30 hosts...'

x = 0
30.times do
  name = Faker::Music.band
  user = User.new(
    username: "#{name.split.join}#{x}",
    email: "#{name.split.join}#{x}@gigme.com",
    password: '12345678',
    first_name: Faker::Music.mambo_no_5,
    last_name: Faker::Music.genre,
    phone_number: '0123456789',
    status: "host",
  )
  user.save!
  puts "created user #{user.username}"
  x += 1
end

puts "Creating 30 hosts finished!"


# Creating VENUE seeds

puts 'Creating venues...'



file1 = URI.open('https://lh5.googleusercontent.com/p/AF1QipPLEIZw135hjAcoCJPiXOmcWUXiuxKRXC8y-bDD=w1080-k-no')
venue1 = Venue.new(
  name: "Brauhaus Neulich",
  address: "Selchower Str. 20, 12049",
  contact_details: "Mail: brauhausneulich@venues.com",
  user_id: 5
)
venue1.photo.attach(io: file1, filename: 'brauhaus_neulich.png', content_type: 'image/png')
venue1.save!
puts "Created #{venue1.name}"

file2 = URI.open("https://lh5.googleusercontent.com/p/AF1QipOtjujjkdgrbSLOvsVqYyxKtSwohDWPQLuAT5DI=w1080-k-no")
venue2 = Venue.new(
  name: "Fuks Bar",
  address: "Hobrechtstraße 64, 12047",
  contact_details: "Mail: fuksbar@venues.com",
  user_id: 6
)
venue2.photo.attach(io: file2, filename: 'fuks_bar.png', content_type: 'image/png')
venue2.save!
puts "Created #{venue2.name}"

file3 = URI.open("https://www.top10berlin.de/sites/top10berlin.de/files/styles/juicebox/public/location/slider/2018/01/22/rickenbackers-music-inn_bars-mit-live-musik_top10berlin_foto_rickenbackers_1200x600_1_0.jpg?itok=PRWBGgCF")
venue3 = Venue.new(
  name: "Rickenbacker’s Music-Inn",
  address: "Bundesallee 194B, 10717",
  contact_details: "Mail: RickenbackersMusic-Inn@venues.com",
  user_id: 7
)
venue3.photo.attach(io: file3, filename: 'rickenbackers_music_inn.png', content_type: 'image/png')
venue3.save!
puts "Created #{venue3.name}"

file4 = URI.open("https://i.pinimg.com/736x/f6/a8/15/f6a8157d2ec1db9f35b0901fef62e398.jpg")
venue4 = Venue.new(
  name: "Lyrik",
  address: "Kollwitzstraße 97, 10435",
  contact_details: "Mail: Lyrik@venues.com",
  user_id: 8
)
venue4.photo.attach(io: file4, filename: 'lyrik.png', content_type: 'image/png')
venue4.save!
puts "Created #{venue4.name}"

file5 = URI.open("https://cdn.eventinc.de/provider_pictures/pictures/000/235/345/cropped/eventlocation-cassiopeia-berlin.jpg?1579516932")
venue5 = Venue.new(
  name: "Cassiopeia",
  address: "Revaler Str. 99, 10245",
  contact_details: "Mail: Cassiopeia@venues.com",
  user_id: 9
)
venue5.photo.attach(io: file5, filename: 'cassiopeia.png', content_type: 'image/png')
venue5.save!
puts "Created #{venue5.name}"

file6 = URI.open("https://thehatbar.de/wp-content/uploads/2020/04/Hat-bxSlider-01_1920x1000_01.jpg")
venue6 = Venue.new(
  name: "The Hat Bar Berlin",
  address: "Lotte-Lenya-Bogen 550, 10623",
  contact_details: "Mail: TheHatBarBerlin@venues.com",
  user_id: 10
)
venue6.photo.attach(io: file6, filename: 'the_hat.png', content_type: 'image/png')
venue6.save!
puts "Created #{venue6.name}"

file7 = URI.open("https://helfen-shop.berlin/wp-content/uploads/2020/03/Yorckschlo%CC%88sschen_19032020.jpg")
venue7 = Venue.new(
  name: "Yorckschlösschen",
  address: "Yorckstraße 15, 10965 ",
  contact_details: "Mail: Yorckschlösschen@venues.com",
  user_id: 11
)
venue7.photo.attach(io: file7, filename: 'yorckschloesschen.png', content_type: 'image/png')
venue7.save!
puts "Created #{venue7.name}"

file8 = URI.open("https://www.berlin.de/binaries/adressen/71128/source/1355765612/624x468/")
venue8 = Venue.new(
  name: "Madame Claude",
  address: "Lübbener Str. 19, 10997 ",
  contact_details: "Mail: MadameClaude@venues.com",
  user_id: 12
)
venue8.photo.attach(io: file8, filename: 'madame_claude.png', content_type: 'image/png')
venue8.save!
puts "Created #{venue8.name}"

file9 = URI.open("https://www.top10berlin.de/sites/top10berlin.de/files/styles/list_image/public/location/mainimages/2014/06/16/fullsize_privatclub_betreiber4_2.jpg?itok=QVTBLOOG")
venue9 = Venue.new(
  name: "Schokoladen",
  address: "Ackerstraße 169, 10115 ",
  contact_details: "Mail: Schokoladen@venues.com",
  user_id: 13
)
venue9.photo.attach(io: file9, filename: 'schokoladen.png', content_type: 'image/png')
venue9.save!
puts "Created #{venue9.name}"

file10 = URI.open("http://mitvergnuegen.com/wp-content/uploads/2015/07/fairytalebar-3-von-4.jpg")
venue10 = Venue.new(
  name: "FairytaleBar",
  address: "Am Friedrichshain 24, 10407 ",
  contact_details: "Mail: FairytaleBar@venues.com",
  user_id: 14
)
venue10.photo.attach(io: file10, filename: 'fairytale_bar.png', content_type: 'image/png')
venue10.save!
puts "Created #{venue10.name}"

file11 = URI.open("https://images.squarespace-cdn.com/content/v1/55146be5e4b0392be71840b6/1432999631685-PKYLVMJTHJ4P9M7FEZCB/image-asset.gif?format=1000w")
venue11 = Venue.new(
  name: "Zig Zag Jazz Club Berlin",
  address: "Hauptstraße 89, 12159 ",
  contact_details: "Mail: ZigZagJazzClubBerlin@venues.com",
  user_id: 15
)
venue11.photo.attach(io: file11, filename: 'zig_zag_jazz_club.png', content_type: 'image/png')
venue11.save!
puts "Created #{venue11.name}"

file12 = URI.open("https://www.theclubmap.com/wp-content/uploads/2013/05/Bi-Nuu-4.jpg")
venue12 = Venue.new(
  name: "Bi Nuu",
  address: "U Schlesisches Tor",
  contact_details: "Mail: BiNuu@venues.com",
  user_id: 16
)
venue12.photo.attach(io: file12, filename: 'bi_nuu.png', content_type: 'image/png')
venue12.save!
puts "Created #{venue12.name}"

file13 = URI.open("https://www.eschschloraque.de/sites/default/files/pictures/Eschschloraque_Juli_2010_1B.jpg")
venue13 = Venue.new(
  name: "Eschschloraque",
  address: "Rosenthaler Str. 39 - 2, 10178 ",
  contact_details: "Mail: Eschschloraque@venues.com",
  user_id: 17
)
venue13.photo.attach(io: file13, filename: 'eschschloraque.png', content_type: 'image/png')
venue13.save!
puts "Created #{venue13.name}"

file14 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/12/59/bc/5d/studio-8.jpg")
venue14 = Venue.new(
  name: "Studio 8",
  address: "Grüntaler Str. 8, 13357 ",
  contact_details: "Mail: Studio8@venues.com",
  user_id: 18
)
venue14.photo.attach(io: file14, filename: 'studio_8.png', content_type: 'image/png')
venue14.save!
puts "Created #{venue14.name}"

file15 = URI.open("https://jazzity.net/img/sowieso01.jpg")
venue15 = Venue.new(
  name: "Sowieso",
  address: "Weisestraße 24, 12049",
  contact_details: "Mail: Sowieso@venues.com",
  user_id: 19
)
venue15.photo.attach(io: file15, filename: 'sowieso.png', content_type: 'image/png')
venue15.save!
puts "Created #{venue15.name}"

file16 = URI.open("https://www.rockabilly-rules.com/blog/wp-content/uploads/2014/10/roadrunner_paradise-berlin.jpg")
venue16 = Venue.new(
  name: "Roadrunner's Paradise",
  address: "Saarbrücker Str. 24, 10405 ",
  contact_details: "Mail: RoadrunnersParadise@venues.com",
  user_id: 20
)
venue16.photo.attach(io: file16, filename: 'roadrunners_paradise.png', content_type: 'image/png')
venue16.save!
puts "Created #{venue16.name}"

puts "Creating venues finished!"

# Creating EVENT seeds

puts 'Creating events...'

date = Faker::Date.between(from: '2021-11-23', to: '2023-09-25')
event1 = Event.new(
  start_time: date,
  end_time: date + 1,
  venue_id: 1
)
event1.save!
puts "Created event1"
date2 = Faker::Date.between(from: '2021-11-23', to: '2023-09-25')
event2 = Event.new(
  start_time: date2,
  end_time: date2 + 1,
  venue_id: 1
)
event2.save!
puts "Created event2"
date3 = Faker::Date.between(from: '2021-11-23', to: '2023-09-25')
event3 = Event.new(
  start_time: date3,
  end_time: date3 + 1,
  venue_id: 1
)
event3.save!
puts "Created event3"
date = Faker::Date.between(from: '2021-11-23', to: '2023-09-25')
event4 = Event.new(
  start_time: date,
  end_time: date + 1,
  venue_id: 1
)
event4.save!
puts "Created event4"

30.times do
  date = Faker::Date.between(from: '2021-11-23', to: '2023-09-25')
  event = Event.new(
  start_time: date,
  end_time: date + 1,
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
