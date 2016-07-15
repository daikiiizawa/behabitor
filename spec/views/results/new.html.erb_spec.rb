require 'rails_helper'

RSpec.describe "results/new", type: :view do
  before(:each) do
    assign(:result, Result.new(
      :type => 1
    ))
  end

  it "renders new result form" do
    render

    assert_select "form[action=?][method=?]", results_path, "post" do

      assert_select "input#result_type[name=?]", "result[type]"
    end
  end
end
