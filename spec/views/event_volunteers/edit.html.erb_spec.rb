require 'rails_helper'

RSpec.describe "event_volunteers/edit", type: :view do
  before(:each) do
    @event_volunteer = assign(:event_volunteer, EventVolunteer.create!())
  end

  it "renders the edit event_volunteer form" do
    render

    assert_select "form[action=?][method=?]", event_volunteer_path(@event_volunteer), "post" do
    end
  end
end
