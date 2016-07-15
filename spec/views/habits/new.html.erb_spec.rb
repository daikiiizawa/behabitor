require 'rails_helper'

RSpec.describe "habits/new", type: :view do
  before(:each) do
    assign(:habit, Habit.new(
      :title => "MyText",
      :mativation => "MyText",
      :commit => "MyText",
      :declaration => "MyText"
    ))
  end

  it "renders new habit form" do
    render

    assert_select "form[action=?][method=?]", habits_path, "post" do

      assert_select "textarea#habit_mativation[name=?]", "habit[mativation]"

      assert_select "textarea#habit_commit[name=?]", "habit[commit]"

      assert_select "input#habit_decla[name=?]", "habit[decla]"

      assert_select "textarea#habit_declaration[name=?]", "habit[declaration]"
    end
  end
end
