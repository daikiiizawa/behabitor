require 'rails_helper'

RSpec.describe "habits/index", type: :view do
  before(:each) do
    assign(:habits, [
      Habit.create!(
        :title => "MyText",
        :motivation => "MyText",
        :commit => "MyText",
        :declaration => "MyText"
      ),
      Habit.create!(
        :title => "MyText",
        :motivation => "MyText",
        :commit => "MyText",
        :declaration => "MyText"
      )
    ])
  end

  it "renders a list of habits" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Decla".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
