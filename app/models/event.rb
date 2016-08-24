class Event < ApplicationRecord
  belongs_to :band
  belongs_to :venue
  belongs_to :price

  has_many :event_volunteer_slots, dependent: :destroy
  has_many :event_volunteers, through: :event_volunteer_slots

  # accepts_nested_attributes_for :price, :allow_destroy => true

  def hours(n)
    (60 * 60 * n).to_i
  end

  def create_volunteer_slots
    #House Manager and Sound Manager
    EventVolunteerSlot.create!(event: self , role: Role.where(name: "House Manager").first, start_time: start_time, end_time: end_time)
    EventVolunteerSlot.create!(event: self, role: Role.where(name: "Sound Manager").first, start_time: start_time, end_time: end_time)

    #DJ
    EventVolunteerSlot.create!(event: self, role: Role.where(name: "DJ").first, start_time: start_time + hours(1.75), end_time: end_time)

    #Instructors
    EventVolunteerSlot.create!(event: self, role: Role.where(name: "Instructor").first, start_time: start_time + hours(0.75), end_time: start_time + hours(1.75))
    EventVolunteerSlot.create!(event: self, role: Role.where(name: "Instructor").first, start_time: start_time + hours(0.75), end_time: start_time + hours(1.75))
    #Desk Volunteers

    EventVolunteerSlot.create!(event: self, role: Role.where(name: "Desk Volunteer", start_time: start_time, end_time: start_time + hours(1))
    EventVolunteerSlot.create!(event: self, role: Role.where(name: "Desk Volunteer", start_time: start_time, end_time: start_time + hours(1))

    EventVolunteerSlot.create!(event: self, role: Role.where(name: "Desk Volunteer", start_time: start_time + hours(1), end_time: start_time + hours(2))
    EventVolunteerSlot.create!(event: self, role: Role.where(name: "Desk Volunteer", start_time: start_time + hours(1), end_time: start_time + hours(2))

    EventVolunteerSlot.create!(event: self, role: Role.where(name: "Desk Volunteer", start_time: start_time + hours(2), end_time: start_time + hours(3))
    EventVolunteerSlot.create!(event: self, role: Role.where(name: "Desk Volunteer", start_time: start_time + hours(2), end_time: start_time + hours(3))

    EventVolunteerSlot.create!(event: self, role: Role.where(name: "Desk Volunteer", start_time: start_time + hours(3), end_time: start_time + hours(4))

    EventVolunteerSlot.create!(event: self, role: Role.where(name: "Desk Volunteer", start_time: start_time + hours(4.25), end_time: end_time)

    #Angels
    EventVolunteerSlot.create!(event: event, role: Role.where(name: "Angel").first, start_time: event.start_time + hours(0.75), end_time: event.start_time + hours(2.25), notes: "Lead")
    EventVolunteerSlot.create!(event: event, role: Role.where(name: "Angel").first, start_time: event.start_time + hours(0.75), end_time: event.start_time + hours(2.25), notes: "Lead")
    EventVolunteerSlot.create!(event: event, role: Role.where(name: "Angel").first, start_time: event.start_time + hours(0.75), end_time: event.start_time + hours(2.25), notes: "Lead")
    EventVolunteerSlot.create!(event: event, role: Role.where(name: "Angel").first, start_time: event.start_time + hours(0.75), end_time: event.start_time + hours(2.25), notes: "Follow")
    EventVolunteerSlot.create!(event: event, role: Role.where(name: "Angel").first, start_time: event.start_time + hours(0.75), end_time: event.start_time + hours(2.25), notes: "Follow")
    EventVolunteerSlot.create!(event: event, role: Role.where(name: "Angel").first, start_time: event.start_time + hours(0.75), end_time: event.start_time + hours(2.25), notes: "Follow")
  end
end
