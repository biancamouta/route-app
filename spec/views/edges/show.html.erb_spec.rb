require 'rails_helper'

RSpec.describe "edges/show", type: :view do
  before(:each) do
    @edge = assign(:edge, Edge.create!(
      name: "Name",
      source: "Source",
      destiny: "Destiny",
      value: 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Source/)
    expect(rendered).to match(/Destiny/)
    expect(rendered).to match(/2/)
  end
end
