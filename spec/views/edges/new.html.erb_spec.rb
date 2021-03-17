require 'rails_helper'

RSpec.describe "edges/new", type: :view do
  before(:each) do
    assign(:edge, Edge.new(
      name: "MyString",
      source: "MyString",
      destiny: "MyString",
      value: 1
    ))
  end

  # it "renders new edge form" do
  #   render

  #   assert_select "form[action=?][method=?]", edges_path, "post" do

  #     assert_select "input[name=?]", "edge[name]"

  #     assert_select "input[name=?]", "edge[source]"

  #     assert_select "input[name=?]", "edge[destiny]"

  #     assert_select "input[name=?]", "edge[value]"
  #   end
  # end
end
