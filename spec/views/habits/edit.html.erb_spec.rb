require 'rails_helper'

RSpec.describe "habits/edit", type: :view do
  before(:each) do
    @habit = assign(:habit, Habit.create!(
      :title => "MyText",
      :mativation => "MyText",
      :commit => "MyText",
      :declaration => "MyText"
    ))
  end

  it "renders the edit habit form" do
    render

    assert_select "form[action=?][method=?]", habit_path(@habit), "post" do

      assert_select "textarea#habit_mativation[name=?]", "habit[mativation]"

      assert_select "textarea#habit_commit[name=?]", "habit[commit]"

      assert_select "input#habit_decla[name=?]", "habit[decla]"

      assert_select "textarea#habit_declaration[name=?]", "habit[declaration]"
    end
  end
end
