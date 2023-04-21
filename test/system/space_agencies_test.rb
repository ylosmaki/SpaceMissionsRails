require "application_system_test_case"

class SpaceAgenciesTest < ApplicationSystemTestCase
  setup do
    @space_agency = space_agencies(:one)
  end

  test "visiting the index" do
    visit space_agencies_url
    assert_selector "h1", text: "Space agencies"
  end

  test "should create space agency" do
    visit space_agencies_url
    click_on "New space agency"

    check "Exists" if @space_agency.exists
    fill_in "Headquarters", with: @space_agency.headquarters
    fill_in "Name", with: @space_agency.name
    click_on "Create Space agency"

    assert_text "Space agency was successfully created"
    click_on "Back"
  end

  test "should update Space agency" do
    visit space_agency_url(@space_agency)
    click_on "Edit this space agency", match: :first

    check "Exists" if @space_agency.exists
    fill_in "Headquarters", with: @space_agency.headquarters
    fill_in "Name", with: @space_agency.name
    click_on "Update Space agency"

    assert_text "Space agency was successfully updated"
    click_on "Back"
  end

  test "should destroy Space agency" do
    visit space_agency_url(@space_agency)
    click_on "Destroy this space agency", match: :first

    assert_text "Space agency was successfully destroyed"
  end
end
