require 'rails_helper'

RSpec.describe "results/show", type: :view do
  before(:each) do
    @result = assign(:result, Result.create!(
      :type => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
  end
end
