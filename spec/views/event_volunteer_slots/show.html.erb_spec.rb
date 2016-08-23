require 'rails_helper'

RSpec.describe "event_volunteer_slots/show", type: :view do
  before(:each) do
    @event_volunteer_slot = assign(:event_volunteer_slot, EventVolunteerSlot.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
