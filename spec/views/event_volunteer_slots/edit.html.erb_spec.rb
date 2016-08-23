require 'rails_helper'

RSpec.describe "event_volunteer_slots/edit", type: :view do
  before(:each) do
    @event_volunteer_slot = assign(:event_volunteer_slot, EventVolunteerSlot.create!())
  end

  it "renders the edit event_volunteer_slot form" do
    render

    assert_select "form[action=?][method=?]", event_volunteer_slot_path(@event_volunteer_slot), "post" do
    end
  end
end
