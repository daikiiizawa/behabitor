require 'rails_helper'

RSpec.describe "descoverlies/index", type: :view do
  before(:each) do
    assign(:descoverlies, [
      Descoverly.create!(
        :type => 2,
        :description => "Description"
      ),
      Descoverly.create!(
        :type => 2,
        :description => "Description"
      )
    ])
  end

  it "renders a list of descoverlies" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
