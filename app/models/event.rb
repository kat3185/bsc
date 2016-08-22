class Event < ApplicationRecord
  belongs_to :band
  belongs_to :venue
  belongs_to :price

  has_many :event_volunteers
  has_many :users, through: :event_volunteers
end
