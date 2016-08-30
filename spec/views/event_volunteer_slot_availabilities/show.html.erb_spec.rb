require 'rails_helper'

RSpec.describe "event_volunteer_slot_availabilities/show", type: :view do
  before(:each) do
    @event_volunteer_slot_availability = assign(:event_volunteer_slot_availability, EventVolunteerSlotAvailability.create!(
      :user => nil,
      :event => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
