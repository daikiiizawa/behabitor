require "rails_helper"

RSpec.describe DescoverliesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/descoverlies").to route_to("descoverlies#index")
    end

    it "routes to #new" do
      expect(:get => "/descoverlies/new").to route_to("descoverlies#new")
    end

    it "routes to #show" do
      expect(:get => "/descoverlies/1").to route_to("descoverlies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/descoverlies/1/edit").to route_to("descoverlies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/descoverlies").to route_to("descoverlies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/descoverlies/1").to route_to("descoverlies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/descoverlies/1").to route_to("descoverlies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/descoverlies/1").to route_to("descoverlies#destroy", :id => "1")
    end

  end
end
