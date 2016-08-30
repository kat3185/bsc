class EventVolunteerSlot < ApplicationRecord
  belongs_to :event
  belongs_to :role

  has_one :event_volunteer, dependent: :destroy
  has_many :event_volunteer_slot_availabilities

  def display_volunteer
    event_volunteer = EventVolunteer.where(event_volunteer_slot_id: id).first
    event_volunteer.nil? ? "Open" : event_volunteer.user.full_name
  end

  def volunteer_id
    event_volunteer = EventVolunteer.where(event_volunteer_slot_id: id).first
    event_volunteer.nil? ? "" : event_volunteer.user.id
  end

  def self.create_friday_volunteer_slots(event)
    roles = Role.map_roles

    #House Manager and Sound Manager
    EventVolunteerSlot.create!(event: event, role: roles["House Manager"], start_time: event.start_time, end_time: event.end_time)
    EventVolunteerSlot.create!(event: event, role: roles["Sound Manager"], start_time: event.start_time, end_time: event.end_time)

    #DJ
    EventVolunteerSlot.create!(event: event, role: roles["DJ"], start_time: event.hours_after_start(1.75), end_time: event.end_time)

    #Instructors
    EventVolunteerSlot.create!(event: event, role: roles["Instructor"], start_time: event.hours_after_start(0.75), end_time: event.hours_after_start(1.75))
    EventVolunteerSlot.create!(event: event, role: roles["Instructor"], start_time: event.hours_after_start(0.75), end_time: event.hours_after_start(1.75))
    #Desk Volunteers

    EventVolunteerSlot.create!(event: event, role: roles["Desk Volunteer"], start_time: event.start_time, end_time: event.hours_after_start(1))

    EventVolunteerSlot.create!(event: event, role: roles["Desk Volunteer"], start_time: event.hours_after_start(1), end_time: event.hours_after_start(2))

    EventVolunteerSlot.create!(event: event, role: roles["Desk Volunteer"], start_time: event.hours_after_start(2), end_time: event.hours_after_start(3))

    EventVolunteerSlot.create!(event: event, role: roles["Desk Volunteer"], start_time: event.hours_after_start(3), end_time: event.hours_after_start(4))

    EventVolunteerSlot.create!(event: event, role: roles["Desk Volunteer"], start_time: event.hours_after_start(4.25), end_time: event.end_time)

    #Angels
    EventVolunteerSlot.create!(event: event, role: roles["Angel"], start_time: event.hours_after_start(0.75), end_time: event.hours_after_start(2.25), notes: "Lead")
  end
end
