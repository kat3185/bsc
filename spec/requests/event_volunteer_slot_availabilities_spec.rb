require 'rails_helper'

RSpec.describe "EventVolunteerSlotAvailabilities", type: :request do
  describe "GET /event_volunteer_slot_availabilities" do
    it "works! (now write some real specs)" do
      get event_volunteer_slot_availabilities_path
      expect(response).to have_http_status(200)
    end
  end
end
