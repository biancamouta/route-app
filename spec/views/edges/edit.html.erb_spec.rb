require 'rails_helper'

RSpec.describe "edges/edit", type: :view do
  before(:each) do
    @edge = assign(:edge, Edge.create!(
      name: "MyString",
      source: "MyString",
      destiny: "MyString",
      value: 1
    ))
  end

  # it "renders the edit edge form" do
  #   render

  #   assert_select "form[action=?][method=?]", edge_path(@edge), "post" do

  #     assert_select "input[name=?]", "edge[name]"

  #     assert_select "input[name=?]", "edge[source]"

  #     assert_select "input[name=?]", "edge[destiny]"

  #     assert_select "input[name=?]", "edge[value]"
  #   end
  # end
end
