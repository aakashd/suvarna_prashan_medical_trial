require "rails_helper"

RSpec.describe NakshatraDatesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/nakshatra_dates").to route_to("nakshatra_dates#index")
    end

    it "routes to #new" do
      expect(:get => "/nakshatra_dates/new").to route_to("nakshatra_dates#new")
    end

    it "routes to #show" do
      expect(:get => "/nakshatra_dates/1").to route_to("nakshatra_dates#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/nakshatra_dates/1/edit").to route_to("nakshatra_dates#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/nakshatra_dates").to route_to("nakshatra_dates#create")
    end

    it "routes to #update" do
      expect(:put => "/nakshatra_dates/1").to route_to("nakshatra_dates#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/nakshatra_dates/1").to route_to("nakshatra_dates#destroy", :id => "1")
    end

  end
end
