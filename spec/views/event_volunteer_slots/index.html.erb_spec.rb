require 'rails_helper'

RSpec.describe "event_volunteer_slots/index", type: :view do
  before(:each) do
    assign(:event_volunteer_slots, [
      EventVolunteerSlot.create!(),
      EventVolunteerSlot.create!()
    ])
  end

  it "renders a list of event_volunteer_slots" do
    render
  end
end
