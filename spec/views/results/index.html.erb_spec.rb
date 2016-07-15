require 'rails_helper'

RSpec.describe "results/index", type: :view do
  before(:each) do
    assign(:results, [
      Result.create!(
        :type => 2
      ),
      Result.create!(
        :type => 2
      )
    ])
  end

  it "renders a list of results" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
