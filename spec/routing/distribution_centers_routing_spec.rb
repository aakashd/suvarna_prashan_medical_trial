require "rails_helper"

RSpec.describe DistributionCentersController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/distribution_centers").to route_to("distribution_centers#index")
    end

    it "routes to #new" do
      expect(:get => "/distribution_centers/new").to route_to("distribution_centers#new")
    end

    it "routes to #show" do
      expect(:get => "/distribution_centers/1").to route_to("distribution_centers#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/distribution_centers/1/edit").to route_to("distribution_centers#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/distribution_centers").to route_to("distribution_centers#create")
    end

    it "routes to #update" do
      expect(:put => "/distribution_centers/1").to route_to("distribution_centers#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/distribution_centers/1").to route_to("distribution_centers#destroy", :id => "1")
    end

  end
end
