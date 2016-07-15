require 'rails_helper'

RSpec.describe "habits/show", type: :view do
  before(:each) do
    @habit = assign(:habit, Habit.create!(
      :title => "MyText",
      :mativation => "MyText",
      :commit => "MyText",
      :declaration => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Decla/)
    expect(rendered).to match(/MyText/)
  end
end
