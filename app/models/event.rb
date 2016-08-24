class Event < ApplicationRecord
  belongs_to :band
  belongs_to :venue
  belongs_to :price

  has_many :event_volunteer_slots, dependent: :destroy
  has_many :event_volunteers, through: :event_volunteer_slots

  # accepts_nested_attributes_for :price, :allow_destroy => true

  def hours_after_start(n)
    start_time + Time.hours_to_seconds(n)
  end

  def is_djed?
    band.name == "DJ"
  end
end

class Time
  def self.hours_to_seconds(n)
    (60 * 60 * n).to_i
  end
end
