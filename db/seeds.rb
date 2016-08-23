user = User.new
user.email = 'ken@bsc.com'
user.password = 'qwerty'
user.first_name = "Ken"
user.last_name = "Thomas"
user.save!

user = User.new
user.email = 'sarah@bsc.com'
user.password = 'qwerty'
user.first_name = "Sarah"
user.last_name = "Getter"
user.save!

user = User.new
user.email = 'mike@bostonswingcentral.com'
user.password = 'qwerty'
user.first_name = "Mike"
user.last_name = "Hibarger"
user.save!

user = User.new
user.email = 'dangmai@bsc.com'
user.password = 'qwerty'
user.first_name = "Dang"
user.last_name = "Mai"
user.save!

user = User.new
user.email = 'cassie@bsc.com'
user.password = 'qwerty'
user.first_name = "Cassie"
user.last_name = "Filios"
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
start_time = Chronic.parse('this friday 7:15 PM')
end_time = Chronic.parse('this saturday at 12:30 AM')
event = Event.new(band: band, venue: venue, price: price, start_time: start_time, end_time: end_time)
event.save!
def hours(n)
  (60 * 60 * n).to_i
end
#House Manager and Sound Manager
EventVolunteerSlot.create!(event: event, role: Role.where(name: "House Manager").first, start_time: event.start_time, end_time: event.end_time)
EventVolunteerSlot.create!(event: event, role: Role.where(name: "Sound Manager").first, start_time: event.start_time, end_time: event.end_time)

#DJ
EventVolunteerSlot.create!(event: event, role: Role.where(name: "DJ").first, start_time: event.start_time + hours(1.75), end_time: event.end_time)

#Instructors
EventVolunteerSlot.create!(event: event, role: Role.where(name: "Instructor").first, start_time: event.start_time + hours(0.75), end_time: event.start_time + hours(1.75))
EventVolunteerSlot.create!(event: event, role: Role.where(name: "Instructor").first, start_time: event.start_time + hours(0.75), end_time: event.start_time + hours(1.75))
#Desk Volunteers

EventVolunteerSlot.create!(event: event, role: Role.first, start_time: event.start_time, end_time: event.start_time + hours(1))
EventVolunteerSlot.create!(event: event, role: Role.first, start_time: event.start_time, end_time: event.start_time + hours(1))

EventVolunteerSlot.create!(event: event, role: Role.first, start_time: event.start_time + hours(1), end_time: event.start_time + hours(2))
EventVolunteerSlot.create!(event: event, role: Role.first, start_time: event.start_time + hours(1), end_time: event.start_time + hours(2))

EventVolunteerSlot.create!(event: event, role: Role.first, start_time: event.start_time + hours(2), end_time: event.start_time + hours(3))
EventVolunteerSlot.create!(event: event, role: Role.first, start_time: event.start_time + hours(2), end_time: event.start_time + hours(3))

EventVolunteerSlot.create!(event: event, role: Role.first, start_time: event.start_time + hours(3), end_time: event.start_time + hours(4))

EventVolunteerSlot.create!(event: event, role: Role.first, start_time: event.start_time + hours(4.25), end_time: event.end_time)

#Angels
EventVolunteerSlot.create!(event: event, role: Role.where(name: "Angel").first, start_time: event.start_time + hours(0.75), end_time: event.start_time + hours(2.25), notes: "Lead")
EventVolunteerSlot.create!(event: event, role: Role.where(name: "Angel").first, start_time: event.start_time + hours(0.75), end_time: event.start_time + hours(2.25), notes: "Lead")
EventVolunteerSlot.create!(event: event, role: Role.where(name: "Angel").first, start_time: event.start_time + hours(0.75), end_time: event.start_time + hours(2.25), notes: "Lead")
EventVolunteerSlot.create!(event: event, role: Role.where(name: "Angel").first, start_time: event.start_time + hours(0.75), end_time: event.start_time + hours(2.25), notes: "Follow")
EventVolunteerSlot.create!(event: event, role: Role.where(name: "Angel").first, start_time: event.start_time + hours(0.75), end_time: event.start_time + hours(2.25), notes: "Follow")
EventVolunteerSlot.create!(event: event, role: Role.where(name: "Angel").first, start_time: event.start_time + hours(0.75), end_time: event.start_time + hours(2.25), notes: "Follow")
puts "Created Event Volunteer Slots"

EventVolunteer.create!(user_id: 1, event_volunteer_slot_id: 1)
puts 'Create Event Volunteers!'
