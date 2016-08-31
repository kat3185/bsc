volunteer = Role.create!(name: 'Volunteer')
house_manager = Role.create!(name: 'House Manager')
dj = Role.create!(name: 'DJ')
angel = Role.create!(name: 'Angel')
instructor = Role.create!(name: 'Instructor')
guest_list = Role.create!(name: 'Guest List')
staff = Role.create!(name: 'Staff')
sound_manager = Role.create!(name: 'Sound Manager')
board_member = Role.create!(name: 'Board Member')
admin = Role.create!(name: 'Admin')
puts 'Created Roles!'

user = User.new
user.email = 'ken@bsc.com'
user.password = 'qwerty'
user.first_name = "Ken"
user.last_name = "Thomas"
user.save!



UserRole.create!(user: user, role: house_manager)
UserRole.create!(user: user, role: admin)
UserRole.create!(user: user, role: instructor)
UserRole.create!(user: user, role: angel)

user = User.new
user.email = 'sarah@bsc.com'
user.password = 'qwerty'
user.first_name = "Sarah"
user.last_name = "Getter"
user.save!


UserRole.create!(user: user, role: angel)

user = User.new
user.email = 'mike@bostonswingcentral.com'
user.password = 'qwerty'
user.first_name = "Mike"
user.last_name = "Hibarger"
user.save!

UserRole.create!(user: user, role: house_manager)
UserRole.create!(user: user, role: admin)
UserRole.create!(user: user, role: instructor)
UserRole.create!(user: user, role: sound_manager)
UserRole.create!(user: user, role: staff)
UserRole.create!(user: user, role: dj)

user = User.new
user.email = 'dangmai@bsc.com'
user.password = 'qwerty'
user.first_name = "Dang"
user.last_name = "Mai"
user.save!

UserRole.create!(user: user, role: dj)
UserRole.create!(user: user, role: instructor)
UserRole.create!(user: user, role: angel)

user = User.new
user.email = 'cassie@bsc.com'
user.password = 'qwerty'
user.first_name = "Cassie"
user.last_name = "Filios"
user.save!

UserRole.create!(user: user, role: house_manager)
UserRole.create!(user: user, role: instructor)
UserRole.create!(user: user, role: angel)

user = User.new
user.email = 'kevin@bsc.com'
user.password = 'qwerty'
user.first_name = "Kevin"
user.last_name = "Lin"
user.save!

UserRole.create!(user: user, role: house_manager)
UserRole.create!(user: user, role: instructor)
UserRole.create!(user: user, role: angel)

user = User.new
user.email = 'kayla@bsc.com'
user.password = 'qwerty'
user.first_name = "Kayla"
user.last_name = "Dreyfuss"
user.save!

UserRole.create!(user: user, role: house_manager)
UserRole.create!(user: user, role: instructor)
UserRole.create!(user: user, role: angel)

user = User.new
user.email = 'chrystal@bsc.com'
user.password = 'qwerty'
user.first_name = "Chrystal"
user.last_name = "Lloyd"
user.save!

UserRole.create!(user: user, role: house_manager)
UserRole.create!(user: user, role: board_member)
UserRole.create!(user: user, role: angel)

user = User.new
user.email = 'natalie@bsc.com'
user.password = 'qwerty'
user.first_name = "Natalie"
user.last_name = "Eringos"
user.save!

UserRole.create!(user: user, role: house_manager)
UserRole.create!(user: user, role: admin)
UserRole.create!(user: user, role: instructor)
UserRole.create!(user: user, role: sound_manager)
UserRole.create!(user: user, role: staff)
UserRole.create!(user: user, role: dj)

user = User.new
user.email = 'katie@bsc.com'
user.password = 'qwerty'
user.first_name = "Katie"
user.last_name = "Piscelli"
user.save!

UserRole.create!(user: user, role: staff)
UserRole.create!(user: user, role: instructor)
UserRole.create!(user: user, role: angel)

user = User.new
user.email = 'scott@bsc.com'
user.password = 'qwerty'
user.first_name = "Scott"
user.last_name = "Simonsen"
user.save!

UserRole.create!(user: user, role: angel)

user = User.new
user.email = 'Nancy@bsc.com'
user.password = 'qwerty'
user.first_name = "Nancy"
user.last_name = "Tsou"
user.save!

UserRole.create!(user: user, role: angel)

user = User.new
user.email = 'Josh@bsc.com'
user.password = 'qwerty'
user.first_name = "Josh"
user.last_name = "Wilson"
user.save!

UserRole.create!(user: user, role: instructor)
UserRole.create!(user: user, role: angel)

user = User.new
user.email = 'emily@bsc.com'
user.password = 'qwerty'
user.first_name = "Emily"
user.last_name = "Kasman"
user.save!

UserRole.create!(user: user, role: instructor)
UserRole.create!(user: user, role: angel)

user = User.new
user.email = 'paulo@bsc.com'
user.password = 'qwerty'
user.first_name = "Paulo"
user.last_name = "Piscelli"
user.save!

UserRole.create!(user: user, role: instructor)
UserRole.create!(user: user, role: angel)

user = User.new
user.email = 'alex@bsc.com'
user.password = 'qwerty'
user.first_name = "Alex"
user.last_name = "Karp"
user.save!

UserRole.create!(user: user, role: angel)

user = User.new
user.email = 'maria@bsc.com'
user.password = 'qwerty'
user.first_name = "Maria"
user.last_name = "Kakolowski"
user.save!

UserRole.create!(user: user, role: angel)

user = User.new
user.email = 'joseph@bsc.com'
user.password = 'qwerty'
user.first_name = "Joseph"
user.last_name = "Correia"
user.save!


user = User.new
user.email = 'vinay@bsc.com'
user.password = 'qwerty'
user.first_name = "Vinay"
user.last_name = "Rodriguez"
user.save!

UserRole.create!(user: user, role: instructor)
UserRole.create!(user: user, role: angel)
UserRole.create!(user: user, role: sound_manager)

user = User.new
user.email = 'jean@bsc.com'
user.password = 'qwerty'
user.first_name = "Jean"
user.last_name = "Budrow"
user.save!

UserRole.create!(user: user, role: angel)

user = User.new
user.email = 'phalgun@bsc.com'
user.password = 'qwerty'
user.first_name = "Phalgun"
user.last_name = "Lolur"
user.save!

UserRole.create!(user: user, role: angel)

user = User.new
user.email = 'lynx@bsc.com'
user.password = 'qwerty'
user.first_name = "Lynx"
user.last_name = "Mitchell"
user.save!

UserRole.create!(user: user, role: angel)

user = User.new
user.email = 'kellian@bsc.com'
user.password = 'qwerty'
user.first_name = "Kellian"
user.last_name = "Pletcher"
user.save!

UserRole.create!(user: user, role: instructor)
UserRole.create!(user: user, role: angel)

user = User.new
user.email = 'brian@bsc.com'
user.password = 'qwerty'
user.first_name = "Brian"
user.last_name = "Pletcher"
user.save!

UserRole.create!(user: user, role: instructor)
UserRole.create!(user: user, role: angel)
puts 'Created Users and UserRoles!'

Venue.create!(name: 'Extreme DanceSport')
Venue.create!(name: 'The Whistle Stop')
puts 'Created Venues!'

Band.create!(name: 'DJ')
Band.create!(name: 'Gordon Webster and Friends')
Band.create!(name: 'Naomi and Her Handsome Devils')
puts 'Created Bands!'

Price.create!(general: 15, student: 13, discounted: 8)
Price.create!(general: 10, student: 8, discounted: 5)
puts 'Created Prices!'

band = Band.first
venue = Venue.first
price = Price.last
start_time = Chronic.parse('this friday 7:15 PM')
end_time = Chronic.parse('this saturday at 12:30 AM')
event = Event.new(band: band, venue: venue, price: price, start_time: start_time, end_time: end_time)
event.save!
def hours(n)
  (60 * 60 * n).to_i
end
#House Manager and Sound Manager
EventVolunteerSlot.create_friday_volunteer_slots(event)
# EventVolunteerSlot.create!(event: event, role: Role.where(name: "House Manager").first, start_time: event.start_time, end_time: event.end_time)
# EventVolunteerSlot.create!(event: event, role: Role.where(name: "Sound Manager").first, start_time: event.start_time, end_time: event.end_time)
#
# #DJ
# EventVolunteerSlot.create!(event: event, role: Role.where(name: "DJ").first, start_time: event.start_time + hours(1.75), end_time: event.end_time)
#
# #Instructors
# EventVolunteerSlot.create!(event: event, role: Role.where(name: "Instructor").first, start_time: event.start_time + hours(0.75), end_time: event.start_time + hours(1.75))
# EventVolunteerSlot.create!(event: event, role: Role.where(name: "Instructor").first, start_time: event.start_time + hours(0.75), end_time: event.start_time + hours(1.75))
# #Desk Volunteers
#
# EventVolunteerSlot.create!(event: event, role: Role.first, start_time: event.start_time, end_time: event.start_time + hours(1))
# EventVolunteerSlot.create!(event: event, role: Role.first, start_time: event.start_time, end_time: event.start_time + hours(1))
#
# EventVolunteerSlot.create!(event: event, role: Role.first, start_time: event.start_time + hours(1), end_time: event.start_time + hours(2))
# EventVolunteerSlot.create!(event: event, role: Role.first, start_time: event.start_time + hours(1), end_time: event.start_time + hours(2))
#
# EventVolunteerSlot.create!(event: event, role: Role.first, start_time: event.start_time + hours(2), end_time: event.start_time + hours(3))
# EventVolunteerSlot.create!(event: event, role: Role.first, start_time: event.start_time + hours(2), end_time: event.start_time + hours(3))
#
# EventVolunteerSlot.create!(event: event, role: Role.first, start_time: event.start_time + hours(3), end_time: event.start_time + hours(4))
#
# EventVolunteerSlot.create!(event: event, role: Role.first, start_time: event.start_time + hours(4.25), end_time: event.end_time)
#
# #Angels
# EventVolunteerSlot.create!(event: event, role: Role.where(name: "Angel").first, start_time: event.start_time + hours(0.75), end_time: event.start_time + hours(2.25), notes: "Lead")
# EventVolunteerSlot.create!(event: event, role: Role.where(name: "Angel").first, start_time: event.start_time + hours(0.75), end_time: event.start_time + hours(2.25), notes: "Lead")
# EventVolunteerSlot.create!(event: event, role: Role.where(name: "Angel").first, start_time: event.start_time + hours(0.75), end_time: event.start_time + hours(2.25), notes: "Lead")
# EventVolunteerSlot.create!(event: event, role: Role.where(name: "Angel").first, start_time: event.start_time + hours(0.75), end_time: event.start_time + hours(2.25), notes: "Follow")
# EventVolunteerSlot.create!(event: event, role: Role.where(name: "Angel").first, start_time: event.start_time + hours(0.75), end_time: event.start_time + hours(2.25), notes: "Follow")
# EventVolunteerSlot.create!(event: event, role: Role.where(name: "Angel").first, start_time: event.start_time + hours(0.75), end_time: event.start_time + hours(2.25), notes: "Follow")
puts "Created Event and Event Volunteer Slots"
EventSlotUser.create!(user_id: 1, event_volunteer_slot_id: 1)
EventVolunteer.create!(user_id: 1, event_slot_user_id: 1)
puts 'Create Event Volunteers!'
