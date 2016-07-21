require 'rails_helper'

RSpec.describe "targets/index", type: :view do
  before(:each) do
    assign(:targets, [
      Target.create!(
        :type => 2,
        :title => "MyText",
        :description => "Description",
        :text => "Text",
        :precondition => "Precondition",
        :text => "Text",
        :habit => nil
      ),
      Target.create!(
        :type => 2,
        :title => "MyText",
        :description => "Description",
        :text => "Text",
        :precondition => "Precondition",
        :text => "Text",
        :habit => nil
      )
    ])
  end

  it "renders a list of targets" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    assert_select "tr>td", :text => "Text".to_s, :count => 2
    assert_select "tr>td", :text => "Precondition".to_s, :count => 2
    assert_select "tr>td", :text => "Text".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
