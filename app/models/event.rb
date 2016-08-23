class Event < ApplicationRecord
  belongs_to :band
  belongs_to :venue
  belongs_to :price

  has_many :event_volunteer_slots
  has_many :event_volunteers, through: :event_volunteer_slots
  # has_many :users, through: :event_volunteers
end
