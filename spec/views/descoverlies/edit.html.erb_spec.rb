require 'rails_helper'

RSpec.describe "descoverlies/edit", type: :view do
  before(:each) do
    @descoverly = assign(:descoverly, Descoverly.create!(
      :type => 1,
      :description => "MyString"
    ))
  end

  it "renders the edit descoverly form" do
    render

    assert_select "form[action=?][method=?]", descoverly_path(@descoverly), "post" do

      assert_select "input#descoverly_type[name=?]", "descoverly[type]"

      assert_select "input#descoverly_description[name=?]", "descoverly[description]"
    end
  end
end
