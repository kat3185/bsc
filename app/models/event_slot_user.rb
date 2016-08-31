class EventSlotUserValidator < ActiveModel::Validator
  def validate(slot)
    if EventSlotUser.where(user: slot.user, event_volunteer_slot: slot.event_volunteer_slot).length > 0
      slot.errors[:id] << 'Event Slot Availablity must be unique!'
    end
  end
end

class EventSlotUser < ApplicationRecord
  include ActiveModel::Validations
  validates_with EventSlotUserValidator

  belongs_to :user
  belongs_to :event_volunteer_slot

  has_many :event_volunteers, dependent: :destroy

  def event
    event_volunteer_slot.event
  end

  def ids
    "#{id},#{user_id}"
  end

  def full_name
    user.full_name
  end
end
