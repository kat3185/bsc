require "rails_helper"

RSpec.describe EventVolunteerSlotAvailabilitiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/event_volunteer_slot_availabilities").to route_to("event_volunteer_slot_availabilities#index")
    end

    it "routes to #new" do
      expect(:get => "/event_volunteer_slot_availabilities/new").to route_to("event_volunteer_slot_availabilities#new")
    end

    it "routes to #show" do
      expect(:get => "/event_volunteer_slot_availabilities/1").to route_to("event_volunteer_slot_availabilities#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/event_volunteer_slot_availabilities/1/edit").to route_to("event_volunteer_slot_availabilities#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/event_volunteer_slot_availabilities").to route_to("event_volunteer_slot_availabilities#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/event_volunteer_slot_availabilities/1").to route_to("event_volunteer_slot_availabilities#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/event_volunteer_slot_availabilities/1").to route_to("event_volunteer_slot_availabilities#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/event_volunteer_slot_availabilities/1").to route_to("event_volunteer_slot_availabilities#destroy", :id => "1")
    end

  end
end
