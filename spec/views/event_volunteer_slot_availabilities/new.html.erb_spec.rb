require 'rails_helper'

RSpec.describe "event_volunteer_slot_availabilities/new", type: :view do
  before(:each) do
    assign(:event_volunteer_slot_availability, EventVolunteerSlotAvailability.new(
      :user => nil,
      :event => nil
    ))
  end

  it "renders new event_volunteer_slot_availability form" do
    render

    assert_select "form[action=?][method=?]", event_volunteer_slot_availabilities_path, "post" do

      assert_select "input#event_volunteer_slot_availability_user_id[name=?]", "event_volunteer_slot_availability[user_id]"

      assert_select "input#event_volunteer_slot_availability_event_id[name=?]", "event_volunteer_slot_availability[event_id]"
    end
  end
end
