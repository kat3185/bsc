require 'rails_helper'

RSpec.describe "event_volunteer_slots/new", type: :view do
  before(:each) do
    assign(:event_volunteer_slot, EventVolunteerSlot.new())
  end

  it "renders new event_volunteer_slot form" do
    render

    assert_select "form[action=?][method=?]", event_volunteer_slots_path, "post" do
    end
  end
end
