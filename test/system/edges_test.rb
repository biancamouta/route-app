require "application_system_test_case"

class EdgesTest < ApplicationSystemTestCase
  setup do
    @edge = edges(:one)
  end

  test "visiting the index" do
    visit edges_url
    assert_selector "h1", text: "Edges"
  end

  test "creating a Edge" do
    visit edges_url
    click_on "New Edge"

    fill_in "Name", with: @edge.name
    fill_in "Value", with: @edge.value
    click_on "Create Edge"

    assert_text "Edge was successfully created"
    click_on "Back"
  end

  test "updating a Edge" do
    visit edges_url
    click_on "Edit", match: :first

    fill_in "Name", with: @edge.name
    fill_in "Value", with: @edge.value
    click_on "Update Edge"

    assert_text "Edge was successfully updated"
    click_on "Back"
  end

  test "destroying a Edge" do
    visit edges_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Edge was successfully destroyed"
  end
end
