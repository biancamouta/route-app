require 'rails_helper'

RSpec.describe "edges/index", type: :view do
  before(:each) do
    assign(:edges, [
      Edge.create!(
        name: "Name",
        source: "Source",
        destiny: "Destiny",
        value: 2
      ),
      Edge.create!(
        name: "Name",
        source: "Source",
        destiny: "Destiny",
        value: 2
      )
    ])
  end

  it "renders a list of edges" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Source".to_s, count: 2
    assert_select "tr>td", text: "Destiny".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
  end
end
