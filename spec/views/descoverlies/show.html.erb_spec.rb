require 'rails_helper'

RSpec.describe "descoverlies/show", type: :view do
  before(:each) do
    @descoverly = assign(:descoverly, Descoverly.create!(
      :type => 2,
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Description/)
  end
end
