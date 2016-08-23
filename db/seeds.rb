# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.new
user.email = 'ken@bsc.com'
user.password = 'qwerty'
user.save!

user = User.new
user.email = 'mike@bostonswingcentral.com'
user.password = 'qwerty'
user.save!

user = User.new
user.email = 'dangmai@bsc.com'
user.password = 'qwerty'
user.save!

user = User.new
user.email = 'cassie@bsc.com'
user.password = 'qwerty'
user.save!
puts 'Created Users!'

Venue.create!(name: 'Extreme DanceSport')
Venue.create!(name: 'The Whistle Stop')
puts 'Created Venues!'

Band.create!(name: 'Gordon Webster and Friends')
Band.create!(name: 'Naomi and Her Handsome Devils')
puts 'Created Bands!'

Role.create!(name: 'Desk Volunteer')
Role.create!(name: 'House Manager')
Role.create!(name: 'DJ')
Role.create!(name: 'Angel')
Role.create!(name: 'Instructor')
Role.create!(name: 'Guest List')
Role.create!(name: 'Staff')
Role.create!(name: 'Sound Manager')
puts 'Created Roles!'

Price.create!(general: 15, student: 13, discounted: 8)
Price.create!(general: 10, student: 10, discounted: 5)
puts 'Created Prices!'

Event.create!(band_id: 1, venue_id: 2, price_id: 2, start_time: Time.now)
puts 'Created Events!'

band = Band.first
venue = Venue.first
price = Price.first
date = Chronic.parse('this friday 7:15 PM')
event = Event.new(band: band, venue: venue, price: price, start_time: date)
event.save!
EventVolunteerSlot.create!(event: event, role: Role.first, start_time: event.start_time, end_time: event.start_time + 60 * 60)
EventVolunteerSlot.create!(event: event, role: Role.first, start_time: event.start_time, end_time: event.start_time + 60 * 60)

EventVolunteerSlot.create!(event: event, role: Role.first, start_time: event.start_time + 60 * 60, end_time: event.start_time + 60 * 120)
EventVolunteerSlot.create!(event: event, role: Role.first, start_time: event.start_time + 60 * 60, end_time: event.start_time + 60 * 120)

EventVolunteerSlot.create!(event: event, role: Role.first, start_time: event.start_time + 60 * 120, end_time: event.start_time + 60 * 180)
EventVolunteerSlot.create!(event: event, role: Role.first, start_time: event.start_time + 60 * 120, end_time: event.start_time + 60 * 180)

EventVolunteerSlot.create!(event: event, role: Role.first, start_time: event.start_time + 60 * 180, end_time: event.start_time + 60 * 240)

EventVolunteerSlot.create!(event: event, role: Role.first, start_time: event.start_time + 60 * 255, end_time: event.start_time + 60 * 315)

puts "Created Event Volunteer Slots"

EventVolunteer.create!(user_id: 1, event_volunteer_slot_id: 1)
# EventVolunteer.create!(user_id: 1, event_id: 1, role_id: 2, start_time: Time.now, end_time: Time.now)
# puts 'Create Event Volunteers!'
