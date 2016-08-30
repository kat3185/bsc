require 'rails_helper'

RSpec.describe "event_volunteer_slot_availabilities/edit", type: :view do
  before(:each) do
    @event_volunteer_slot_availability = assign(:event_volunteer_slot_availability, EventVolunteerSlotAvailability.create!(
      :user => nil,
      :event => nil
    ))
  end

  it "renders the edit event_volunteer_slot_availability form" do
    render

    assert_select "form[action=?][method=?]", event_volunteer_slot_availability_path(@event_volunteer_slot_availability), "post" do

      assert_select "input#event_volunteer_slot_availability_user_id[name=?]", "event_volunteer_slot_availability[user_id]"

      assert_select "input#event_volunteer_slot_availability_event_id[name=?]", "event_volunteer_slot_availability[event_id]"
    end
  end
end
