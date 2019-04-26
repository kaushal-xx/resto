require 'test_helper'

class RestaurantLocationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurant_location = restaurant_locations(:one)
  end

  test "should get index" do
    get restaurant_locations_url
    assert_response :success
  end

  test "should get new" do
    get new_restaurant_location_url
    assert_response :success
  end

  test "should create restaurant_location" do
    assert_difference('RestaurantLocation.count') do
      post restaurant_locations_url, params: { restaurant_location: { address_line1: @restaurant_location.address_line1, address_line2: @restaurant_location.address_line2, city: @restaurant_location.city, country: @restaurant_location.country, create_time: @restaurant_location.create_time, creator_id: @restaurant_location.creator_id, modified_time: @restaurant_location.modified_time, modifier_id: @restaurant_location.modifier_id, postal_code: @restaurant_location.postal_code, restaurant_branch_id: @restaurant_location.restaurant_branch_id, state: @restaurant_location.state, status: @restaurant_location.status } }
    end

    assert_redirected_to restaurant_location_url(RestaurantLocation.last)
  end

  test "should show restaurant_location" do
    get restaurant_location_url(@restaurant_location)
    assert_response :success
  end

  test "should get edit" do
    get edit_restaurant_location_url(@restaurant_location)
    assert_response :success
  end

  test "should update restaurant_location" do
    patch restaurant_location_url(@restaurant_location), params: { restaurant_location: { address_line1: @restaurant_location.address_line1, address_line2: @restaurant_location.address_line2, city: @restaurant_location.city, country: @restaurant_location.country, create_time: @restaurant_location.create_time, creator_id: @restaurant_location.creator_id, modified_time: @restaurant_location.modified_time, modifier_id: @restaurant_location.modifier_id, postal_code: @restaurant_location.postal_code, restaurant_branch_id: @restaurant_location.restaurant_branch_id, state: @restaurant_location.state, status: @restaurant_location.status } }
    assert_redirected_to restaurant_location_url(@restaurant_location)
  end

  test "should destroy restaurant_location" do
    assert_difference('RestaurantLocation.count', -1) do
      delete restaurant_location_url(@restaurant_location)
    end

    assert_redirected_to restaurant_locations_url
  end
end
