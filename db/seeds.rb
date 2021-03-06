# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require "open-uri"

puts 'cleaning database...'
Message.destroy_all
Booking.destroy_all
Event.destroy_all
Venue.destroy_all
ArtistProfil.destroy_all
User.destroy_all


# Creating USER seeds

puts 'Creating users...'

file = URI.open('https://upload.wikimedia.org/wikipedia/commons/4/40/Angus_%26_Julia_Stone_%40_Sir_Stewart_Bovell_Park_%281_1_2011%29_%285356668456%29.jpg')
marc = User.new(
  username: 'Amelie',
  email: 'amelie@gigme.com',
  password: '12345678',
  first_name: 'Amelie',
  last_name: 'Darenberg',
  phone_number: '015736589485',
  status: "host",
)
marc.photo.attach(io: file, filename: 'marc.png', content_type: 'image/png')
marc.save!
puts "created user #{marc.username}"

file = URI.open('https://hrmasia.com/wp-content/uploads/2019/10/55193977_l.jpg')
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

file = URI.open('https://mixdownmag.com.au/wp-content/uploads/2020/12/mixdown-magazine-a-gig-you-say.jpg')
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

file = URI.open('https://blog.gigmit.com/wp-content/uploads/2020/02/blog.gigmit_organize-own-gigs_neonbrand_unsplash_1200x627.jpg')
amelie = User.new(
  username: 'marc',
  email: 'marc@gigme.com',
  password: '12345678',
  first_name: 'Marc',
  last_name: "Rodenbusch",
  phone_number: '0123456789',
  status: "artist",
)
amelie.photo.attach(io: file, filename: 'amelie.png', content_type: 'image/png')
amelie.save!
puts "created user #{amelie.username}"

file = URI.open('https://blog.gigmit.com/wp-content/uploads/2020/02/blog.gigmit_organize-own-gigs_neonbrand_unsplash_1200x627.jpg')
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



file1 = URI.open('https://setoftheday.com/wp-content/gallery/birgit-bier/ev_hdD48OiM30ubrPAC-EshtA-920_lg.jpg')
venue1 = Venue.new(
  name: "Birgit and Bier",
  address: "Schleusenufer 3, 10997 Berlin",
  contact_details: "Mail: birgitandbier@venues.com",
  user_id: User.first.id,
  about: "The bar opened in 1987 and has since grown into a convivial and musical place where many young musicians have launched their careers",
  requirements: "We have all the sound equipement but bring your instrument (we have a piano!)"
)
venue1.photo.attach(io: file1, filename: 'brauhaus_neulich.png', content_type: 'image/png')
venue1.save!
puts "Created #{venue1.name}"

file2 = URI.open("https://lh5.googleusercontent.com/p/AF1QipOtjujjkdgrbSLOvsVqYyxKtSwohDWPQLuAT5DI=w1080-k-no")
venue2 = Venue.new(
  name: "Fuks Bar",
  address: "Hobrechtstra??e 64, 12047 Berlin",
  contact_details: "Mail: fuksbar@venues.com",
  user_id: User.all[4].id,
  about: "The bar opened in 1987 and has since grown into a convivial and musical place where many young musicians have launched their careers",
  requirements: "We have all the sound equipement but bring your instrument (we have a piano!)"
)
venue2.photo.attach(io: file2, filename: 'fuks_bar.png', content_type: 'image/png')
venue2.save!
puts "Created #{venue2.name}"

file3 = URI.open("https://www.top10berlin.de/sites/top10berlin.de/files/styles/juicebox/public/location/slider/2018/01/22/rickenbackers-music-inn_bars-mit-live-musik_top10berlin_foto_rickenbackers_1200x600_1_0.jpg?itok=PRWBGgCF")
venue3 = Venue.new(
  name: "Rickenbacker???s Music-Inn",
  address: "Bundesallee 194B, 10717 Berlin",
  contact_details: "Mail: RickenbackersMusic-Inn@venues.com",
  user_id: User.all[7].id,
  about: "The bar opened in 1987 and has since grown into a convivial and musical place where many young musicians have launched their careers",
  requirements: "We have all the sound equipement but bring your instrument (we have a piano!)"
)
venue3.photo.attach(io: file3, filename: 'rickenbackers_music_inn.png', content_type: 'image/png')
venue3.save!
puts "Created #{venue3.name}"

file4 = URI.open("https://i.pinimg.com/736x/f6/a8/15/f6a8157d2ec1db9f35b0901fef62e398.jpg")
venue4 = Venue.new(
  name: "Lyrik",
  address: "Kollwitzstra??e 97, 10435 Berlin",
  contact_details: "Mail: Lyrik@venues.com",
  user_id: User.all[8].id,
  about: "The bar opened in 1987 and has since grown into a convivial and musical place where many young musicians have launched their careers",
  requirements: "We have all the sound equipement but bring your instrument (we have a piano!)"
)
venue4.photo.attach(io: file4, filename: 'lyrik.png', content_type: 'image/png')
venue4.save!
puts "Created #{venue4.name}"

file5 = URI.open("https://cdn.eventinc.de/provider_pictures/pictures/000/235/345/cropped/eventlocation-cassiopeia-berlin.jpg?1579516932")
venue5 = Venue.new(
  name: "Cassiopeia",
  address: "Revaler Str. 99, 10245 Berlin",
  contact_details: "Mail: Cassiopeia@venues.com",
  user_id: User.all[9].id,
  about: "The bar opened in 1987 and has since grown into a convivial and musical place where many young musicians have launched their careers",
  requirements: "We have all the sound equipement but bring your instrument (we have a piano!)"
)
venue5.photo.attach(io: file5, filename: 'cassiopeia.png', content_type: 'image/png')
venue5.save!
puts "Created #{venue5.name}"

file6 = URI.open("https://thehatbar.de/wp-content/uploads/2020/04/Hat-bxSlider-01_1920x1000_01.jpg")
venue6 = Venue.new(
  name: "The Hat Bar Berlin",
  address: "Lotte-Lenya-Bogen 550, 10623 Berlin",
  contact_details: "Mail: TheHatBarBerlin@venues.com",
  user_id: User.all[10].id,
  about: "The bar opened in 1987 and has since grown into a convivial and musical place where many young musicians have launched their careers",
  requirements: "We have all the sound equipement but bring your instrument (we have a piano!)"
)
venue6.photo.attach(io: file6, filename: 'the_hat.png', content_type: 'image/png')
venue6.save!
puts "Created #{venue6.name}"

file7 = URI.open("https://helfen-shop.berlin/wp-content/uploads/2020/03/Yorckschlo%CC%88sschen_19032020.jpg")
venue7 = Venue.new(
  name: "Yorckschl??sschen",
  address: "Yorckstra??e 15, 10965 Berlin",
  contact_details: "Mail: Yorckschl??sschen@venues.com",
  user_id: User.all[11].id,
  about: "The bar opened in 1987 and has since grown into a convivial and musical place where many young musicians have launched their careers",
  requirements: "We have all the sound equipement but bring your instrument (we have a piano!)"
)
venue7.photo.attach(io: file7, filename: 'yorckschloesschen.png', content_type: 'image/png')
venue7.save!
puts "Created #{venue7.name}"

file8 = URI.open("https://www.berlin.de/binaries/adressen/71128/source/1355765612/624x468/")
venue8 = Venue.new(
  name: "Madame Claude",
  address: "L??bbener Str. 19, 10997 Berlin",
  contact_details: "Mail: MadameClaude@venues.com",
  user_id: User.all[12].id,
  about: "The bar opened in 1987 and has since grown into a convivial and musical place where many young musicians have launched their careers",
  requirements: "We have all the sound equipement but bring your instrument (we have a piano!)"
)
venue8.photo.attach(io: file8, filename: 'madame_claude.png', content_type: 'image/png')
venue8.save!
puts "Created #{venue8.name}"

file9 = URI.open("https://www.top10berlin.de/sites/top10berlin.de/files/styles/list_image/public/location/mainimages/2014/06/16/fullsize_privatclub_betreiber4_2.jpg?itok=QVTBLOOG")
venue9 = Venue.new(
  name: "Schokoladen",
  address: "Ackerstra??e 169, 10115 Berlin",
  contact_details: "Mail: Schokoladen@venues.com",
  user_id: User.all[13].id,
  about: "The bar opened in 1987 and has since grown into a convivial and musical place where many young musicians have launched their careers",
  requirements: "We have all the sound equipement but bring your instrument (we have a piano!)"
)
venue9.photo.attach(io: file9, filename: 'schokoladen.png', content_type: 'image/png')
venue9.save!
puts "Created #{venue9.name}"

file10 = URI.open("http://mitvergnuegen.com/wp-content/uploads/2015/07/fairytalebar-3-von-4.jpg")
venue10 = Venue.new(
  name: "FairytaleBar",
  address: "Am Friedrichshain 24, 10407 Berlin",
  contact_details: "Mail: FairytaleBar@venues.com",
  user_id: User.all[14].id,
  about: "The bar opened in 1987 and has since grown into a convivial and musical place where many young musicians have launched their careers",
  requirements: "We have all the sound equipement but bring your instrument (we have a piano!)"
)
venue10.photo.attach(io: file10, filename: 'fairytale_bar.png', content_type: 'image/png')
venue10.save!
puts "Created #{venue10.name}"

file11 = URI.open("https://images.squarespace-cdn.com/content/v1/55146be5e4b0392be71840b6/1432999631685-PKYLVMJTHJ4P9M7FEZCB/image-asset.gif?format=1000w")
venue11 = Venue.new(
  name: "Zig Zag Jazz Club Berlin",
  address: "Hauptstra??e 89, 12159 Berlin",
  contact_details: "Mail: ZigZagJazzClubBerlin@venues.com",
  user_id: User.all[15].id,
  about: "The bar opened in 1987 and has since grown into a convivial and musical place where many young musicians have launched their careers",
  requirements: "We have all the sound equipement but bring your instrument (we have a piano!)"
)
venue11.photo.attach(io: file11, filename: 'zig_zag_jazz_club.png', content_type: 'image/png')
venue11.save!
puts "Created #{venue11.name}"

file12 = URI.open("https://www.theclubmap.com/wp-content/uploads/2013/05/Bi-Nuu-4.jpg")
venue12 = Venue.new(
  name: "Bi Nuu",
  address: "U Schlesisches Tor, 10997 Berlin",
  contact_details: "Mail: BiNuu@venues.com",
  user_id: User.all[16].id,
  about: "The bar opened in 1987 and has since grown into a convivial and musical place where many young musicians have launched their careers",
  requirements: "We have all the sound equipement but bring your instrument (we have a piano!)"
)
venue12.photo.attach(io: file12, filename: 'bi_nuu.png', content_type: 'image/png')
venue12.save!
puts "Created #{venue12.name}"

file13 = URI.open("https://www.eschschloraque.de/sites/default/files/pictures/Eschschloraque_Juli_2010_1B.jpg")
venue13 = Venue.new(
  name: "Eschschloraque",
  address: "Rosenthaler Str. 39 - 2, 10178 Berlin",
  contact_details: "Mail: Eschschloraque@venues.com",
  user_id: User.all[17].id,
  about: "The bar opened in 1987 and has since grown into a convivial and musical place where many young musicians have launched their careers",
  requirements: "We have all the sound equipement but bring your instrument (we have a piano!)"
)
venue13.photo.attach(io: file13, filename: 'eschschloraque.png', content_type: 'image/png')
venue13.save!
puts "Created #{venue13.name}"

file14 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/12/59/bc/5d/studio-8.jpg")
venue14 = Venue.new(
  name: "Studio 8",
  address: "Gr??ntaler Str. 8, 13357 Berlin",
  contact_details: "Mail: Studio8@venues.com",
  user_id: User.all[18].id,
  about: "The bar opened in 1987 and has since grown into a convivial and musical place where many young musicians have launched their careers",
  requirements: "eWe have all the sound equipement but bring your instrument (we have a piano!)"
)
venue14.photo.attach(io: file14, filename: 'studio_8.png', content_type: 'image/png')
venue14.save!
puts "Created #{venue14.name}"

file15 = URI.open("https://jazzity.net/img/sowieso01.jpg")
venue15 = Venue.new(
  name: "Sowieso",
  address: "Weisestra??e 24, 12049 Berlin",
  contact_details: "Mail: Sowieso@venues.com",
  user_id: User.all[19].id,
  about: "The bar opened in 1987 and has since grown into a convivial and musical place where many young musicians have launched their careers",
  requirements: "We have all the sound equipement but bring your instrument (we have a piano!)"
)
venue15.photo.attach(io: file15, filename: 'sowieso.png', content_type: 'image/png')
venue15.save!
puts "Created #{venue15.name}"

file16 = URI.open("https://www.rockabilly-rules.com/blog/wp-content/uploads/2014/10/roadrunner_paradise-berlin.jpg")
venue16 = Venue.new(
  name: "Roadrunner's Paradise",
  address: "Saarbr??cker Str. 24, 10405 Berlin",
  contact_details: "Mail: RoadrunnersParadise@venues.com",
  user_id: User.all[20].id,
  about: "The bar opened in 1987 and has since grown into a convivial and musical place where many young musicians have launched their careers",
  requirements: "We have all the sound equipement but bring your instrument (we have a piano!)"
)
venue16.photo.attach(io: file16, filename: 'roadrunners_paradise.png', content_type: 'image/png')
venue16.save!
puts "Created #{venue16.name}"

puts "Creating venues finished!"

# Creating EVENT seeds

puts 'Creating events...'

event1 = Event.new(
  start_time: '2021-11-27',
  end_time: '2021-11-27',
  gig_start: "20:00",
  gig_end: "21:00",
  venue_id: Venue.all[0].id
)
event1.save!
puts "Created event1"
date2 = Faker::Date.between(from: '2021-12-23', to: '2023-09-25')
event2 = Event.new(
  start_time: '2021-11-25',
  end_time: '2021-11-25',
  gig_start: "22:00",
  gig_end: "23:00",
  venue_id: Venue.all[0].id
)
event2.save!
puts "Created event2"
date3 = Faker::Date.between(from: '2021-12-23', to: '2023-09-25')
event3 = Event.new(
  start_time: date3,
  end_time: date3 + 1,
  gig_start: "21:00",
  gig_end: "21:59",
  venue_id: Venue.all[1].id
)
event3.save!
puts "Created event3"
date = Faker::Date.between(from: '2021-12-23', to: '2023-09-25')
event4 = Event.new(
  start_time: date,
  end_time: date + 1,
  gig_start: "22:00",
  gig_end: "22:59",
  venue_id: Venue.all[1].id
)
event4.save!
puts "Created event4"

30.times do
  date = Faker::Date.between(from: '2021-12-23', to: '2023-09-25')
  start = rand(18..23)
  event = Event.new(
  start_time: date,
  end_time: date + 1,
  gig_start: "#{start}:00",
  gig_end: "#{start}:59",
  venue_id: Venue.all.sample.id
)
event.save!
end
puts "created 30 events"
puts "Creating events finished!"

# Creating BOOKING seeds

puts 'Creating bookings...'

booking1 = Booking.new(
  status: 2,
  user_id: User.all[1].id,
  event_id: Event.all[0].id
)
booking1.save!
puts "Created booking1"

booking2 = Booking.new(
  status: 3,
  user_id: User.all[2].id,
  event_id: Event.all[1].id
)
booking2.save!
puts "Created booking2"

booking3 = Booking.new(
  status: 2,
  user_id: User.all[2].id,
  event_id: Event.all[3].id
)
booking3.save!
puts "Created booking3"

booking4 = Booking.new(
  status: 3,
  user_id: User.all[2].id,
  event_id: Event.all[4].id
)
booking4.save!
puts "Created booking4"

puts "Creating ArtistProfils"

ap1 = ArtistProfil.new(
  user_id: User.all[1].id,
  youtube: "https://www.youtube.com/user/rihanna",
  soundcloud: "https://soundcloud.com/rhiannaofficial"
)
ap1.save!
puts "ap1 created"

ap2 = ArtistProfil.new(
  user_id: User.all[3].id,
  youtube: "https://www.youtube.com/channel/UCehQT6NHMZjl0giIfY7f1mw",
  soundcloud: "https://soundcloud.com/edith-piaf-official"
)
ap2.save
puts "ap2 created"

ap3 = ArtistProfil.new(
  user_id: User.all[2].id,
  youtube: "https://www.youtube.com/c/marilynmanson",
  soundcloud: "https://soundcloud.com/marilynmanson"
)
ap3.save
puts "ap3 created"

puts "Creating bookings finished!"
