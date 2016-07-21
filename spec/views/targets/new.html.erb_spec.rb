require 'rails_helper'

RSpec.describe "targets/new", type: :view do
  before(:each) do
    assign(:target, Target.new(
      :type => 1,
      :title => "MyText",
      :description => "MyString",
      :text => "MyString",
      :precondition => "MyString",
      :text => "MyString",
      :habit => nil
    ))
  end

  it "renders new target form" do
    render

    assert_select "form[action=?][method=?]", targets_path, "post" do

      assert_select "input#target_type[name=?]", "target[type]"

      assert_select "textarea#target_title[name=?]", "target[title]"

      assert_select "input#target_description[name=?]", "target[description]"

      assert_select "input#target_text[name=?]", "target[text]"

      assert_select "input#target_precondition[name=?]", "target[precondition]"

      assert_select "input#target_text[name=?]", "target[text]"

      assert_select "input#target_habit_id[name=?]", "target[habit_id]"
    end
  end
end
