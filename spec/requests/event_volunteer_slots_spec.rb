require 'rails_helper'

RSpec.describe "EventVolunteerSlots", type: :request do
  describe "GET /event_volunteer_slots" do
    it "works! (now write some real specs)" do
      get event_volunteer_slots_path
      expect(response).to have_http_status(200)
    end
  end
end
