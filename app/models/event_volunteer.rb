# class EventVolunteerValidator < ActiveModel::Validator
#   def validate(slot)
#     if EventVolunteer.where(user: slot.user, event_volunteer_slot: slot.event_volunteer_slot).length > 0
#       slot.errors[:id] << 'Event Slot Availablity must be unique!'
#     end
#   end
# end

class EventVolunteer < ApplicationRecord
  # include ActiveModel::Validations
  # validates_with EventVolunteerValidator

  belongs_to :user
  belongs_to :event_volunteer_slot

  def event
    event_volunteer_slot.event
  end

  def ids
    "#{id},#{user_id}"
  end

  def full_name
    user.full_name
  end

  def self.find_if_exists(id, event_volunteer_slot_id)
    EventVolunteer.exists?(id) ? EventVolunteer.find(id) : EventVolunteer.new(event_volunteer_slot_id: event_volunteer_slot_id)
  end

  def schedule!
    slot_volunteers = EventVolunteer.where(event_volunteer_slot_id: self.event_volunteer_slot_id, scheduled: true)
    slot_volunteers.each { |volunteer| volunteer.update(scheduled: false) }
    self.update(scheduled: true) if !self.id.nil?
  end
end
