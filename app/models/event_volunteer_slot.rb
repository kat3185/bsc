class EventVolunteerSlot < ApplicationRecord
  belongs_to :event
  belongs_to :role

  has_many :event_volunteers, dependent: :destroy

  def display_volunteers
    event_volunteer = event_volunteers.where(scheduled: true)
    event_volunteer.empty? ? "Open" : event_volunteer.map(&:full_name).join(', ')
  end

  def volunteer_id
    event_volunteer = event_volunteers.where(scheduled: true)
    event_volunteer.empty? ? "" : event_volunteer.first.id
  end

  def available_slots
    event_volunteers.empty? ? [] : event_volunteers
  end

  def has_notes?
    !self.notes.nil?
  end

  def unschedule_event_volunteers
    self.event_volunteers.where(scheduled: true).each do |volunteer|
      volunteer.scheduled = false
      volunteer.save
    end
  end

  def self.create_friday_volunteer_slots(event)
    roles = Role.map_roles

    #House Manager and Sound Manager
    EventVolunteerSlot.create!(event: event, role: roles["House Manager"], start_time: event.start_time, end_time: event.end_time)
    EventVolunteerSlot.create!(event: event, role: roles["Sound Manager"], start_time: event.start_time, end_time: event.end_time)

    #DJ
    EventVolunteerSlot.create!(event: event, role: roles["DJ"], start_time: event.hours_after_start(1.75), end_time: event.end_time)

    #Instructors
    EventVolunteerSlot.create!(event: event, role: roles["Instructor"], start_time: event.hours_after_start(0.75), end_time: event.hours_after_start(1.75), notes: "Lead")
    EventVolunteerSlot.create!(event: event, role: roles["Instructor"], start_time: event.hours_after_start(0.75), end_time: event.hours_after_start(1.75), notes: "Follow")
    #Desk Volunteers

    EventVolunteerSlot.create!(event: event, role: roles["Volunteer"], start_time: event.start_time, end_time: event.hours_after_start(1))

    EventVolunteerSlot.create!(event: event, role: roles["Volunteer"], start_time: event.hours_after_start(1), end_time: event.hours_after_start(2))

    EventVolunteerSlot.create!(event: event, role: roles["Volunteer"], start_time: event.hours_after_start(2), end_time: event.hours_after_start(3))

    EventVolunteerSlot.create!(event: event, role: roles["Volunteer"], start_time: event.hours_after_start(3), end_time: event.hours_after_start(4))

    EventVolunteerSlot.create!(event: event, role: roles["Volunteer"], start_time: event.hours_after_start(4.25), end_time: event.end_time)

    #Angels
    EventVolunteerSlot.create!(event: event, role: roles["Angel"], start_time: event.hours_after_start(0.75), end_time: event.hours_after_start(2.25), notes: "Lead")
  end
end
