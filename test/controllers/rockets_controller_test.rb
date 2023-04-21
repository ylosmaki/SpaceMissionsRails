require "test_helper"

class RocketsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rocket = rockets(:one)
  end

  test "should get index" do
    get rockets_url
    assert_response :success
  end

  test "should get new" do
    get new_rocket_url
    assert_response :success
  end

  test "should create rocket" do
    assert_difference("Rocket.count") do
      post rockets_url, params: { rocket: { first_launch: @rocket.first_launch, mission_id: @rocket.mission_id, name: @rocket.name } }
    end

    assert_redirected_to rocket_url(Rocket.last)
  end

  test "should show rocket" do
    get rocket_url(@rocket)
    assert_response :success
  end

  test "should get edit" do
    get edit_rocket_url(@rocket)
    assert_response :success
  end

  test "should update rocket" do
    patch rocket_url(@rocket), params: { rocket: { first_launch: @rocket.first_launch, mission_id: @rocket.mission_id, name: @rocket.name } }
    assert_redirected_to rocket_url(@rocket)
  end

  test "should destroy rocket" do
    assert_difference("Rocket.count", -1) do
      delete rocket_url(@rocket)
    end

    assert_redirected_to rockets_url
  end
end
