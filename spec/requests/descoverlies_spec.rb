require 'rails_helper'

RSpec.describe "Descoverlies", type: :request do
  describe "GET /descoverlies" do
    it "works! (now write some real specs)" do
      get descoverlies_path
      expect(response).to have_http_status(200)
    end
  end
end
