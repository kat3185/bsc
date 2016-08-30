require 'rails_helper'

RSpec.describe "event_volunteer_slot_availabilities/index", type: :view do
  before(:each) do
    assign(:event_volunteer_slot_availabilities, [
      EventVolunteerSlotAvailability.create!(
        :user => nil,
        :event => nil
      ),
      EventVolunteerSlotAvailability.create!(
        :user => nil,
        :event => nil
      )
    ])
  end

  it "renders a list of event_volunteer_slot_availabilities" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
