require 'rails_helper'

RSpec.describe "event_volunteers/index", type: :view do
  before(:each) do
    assign(:event_volunteers, [
      EventVolunteer.create!(),
      EventVolunteer.create!()
    ])
  end

  it "renders a list of event_volunteers" do
    render
  end
end
