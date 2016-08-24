class EventVolunteerSlot < ApplicationRecord
  belongs_to :event
  belongs_to :role

  has_one :event_volunteer, dependent: :destroy

  def display_volunteer
    event_volunteer = EventVolunteer.where(event_volunteer_slot_id: id).first
    event_volunteer.nil? ? "Open" : event_volunteer.user.full_name
  end

  def volunteer_id
    event_volunteer = EventVolunteer.where(event_volunteer_slot_id: id).first
    event_volunteer.nil? ? "" : event_volunteer.user.id
  end
end
