require "test_helper"

class SpaceAgenciesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @space_agency = space_agencies(:one)
  end

  test "should get index" do
    get space_agencies_url
    assert_response :success
  end

  test "should get new" do
    get new_space_agency_url
    assert_response :success
  end

  test "should create space_agency" do
    assert_difference("SpaceAgency.count") do
      post space_agencies_url, params: { space_agency: { exists: @space_agency.exists, headquarters: @space_agency.headquarters, name: @space_agency.name } }
    end

    assert_redirected_to space_agency_url(SpaceAgency.last)
  end

  test "should show space_agency" do
    get space_agency_url(@space_agency)
    assert_response :success
  end

  test "should get edit" do
    get edit_space_agency_url(@space_agency)
    assert_response :success
  end

  test "should update space_agency" do
    patch space_agency_url(@space_agency), params: { space_agency: { exists: @space_agency.exists, headquarters: @space_agency.headquarters, name: @space_agency.name } }
    assert_redirected_to space_agency_url(@space_agency)
  end

  test "should destroy space_agency" do
    assert_difference("SpaceAgency.count", -1) do
      delete space_agency_url(@space_agency)
    end

    assert_redirected_to space_agencies_url
  end
end
