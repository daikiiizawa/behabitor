require 'rails_helper'

RSpec.describe "results/edit", type: :view do
  before(:each) do
    @result = assign(:result, Result.create!(
      :type => 1
    ))
  end

  it "renders the edit result form" do
    render

    assert_select "form[action=?][method=?]", result_path(@result), "post" do

      assert_select "input#result_type[name=?]", "result[type]"
    end
  end
end
