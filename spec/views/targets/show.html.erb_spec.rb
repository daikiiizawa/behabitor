require 'rails_helper'

RSpec.describe "targets/show", type: :view do
  before(:each) do
    @target = assign(:target, Target.create!(
      :type => 2,
      :title => "MyText",
      :description => "Description",
      :text => "Text",
      :precondition => "Precondition",
      :text => "Text",
      :habit => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Description/)
    expect(rendered).to match(/Text/)
    expect(rendered).to match(/Precondition/)
    expect(rendered).to match(/Text/)
    expect(rendered).to match(//)
  end
end
