require 'rails_helper'

RSpec.describe "descoverlies/new", type: :view do
  before(:each) do
    assign(:descoverly, Descoverly.new(
      :type => 1,
      :description => "MyString"
    ))
  end

  it "renders new descoverly form" do
    render

    assert_select "form[action=?][method=?]", descoverlies_path, "post" do

      assert_select "input#descoverly_type[name=?]", "descoverly[type]"

      assert_select "input#descoverly_description[name=?]", "descoverly[description]"
    end
  end
end
