require 'test_helper'

class RestaurantsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurant = restaurants(:one)
  end

  test "should get index" do
    get restaurants_url
    assert_response :success
  end

  test "should get new" do
    get new_restaurant_url
    assert_response :success
  end

  test "should create restaurant" do
    assert_difference('Restaurant.count') do
      post restaurants_url, params: { restaurant: { brand_logo_url: @restaurant.brand_logo_url, create_time: @restaurant.create_time, creator_id: @restaurant.creator_id, description: @restaurant.description, modified_time: @restaurant.modified_time, modifier_id: @restaurant.modifier_id, name: @restaurant.name, owner_address: @restaurant.owner_address, owner_contact_no: @restaurant.owner_contact_no, owner_name: @restaurant.owner_name, status: @restaurant.status, user_id: @restaurant.user_id } }
    end

    assert_redirected_to restaurant_url(Restaurant.last)
  end

  test "should show restaurant" do
    get restaurant_url(@restaurant)
    assert_response :success
  end

  test "should get edit" do
    get edit_restaurant_url(@restaurant)
    assert_response :success
  end

  test "should update restaurant" do
    patch restaurant_url(@restaurant), params: { restaurant: { brand_logo_url: @restaurant.brand_logo_url, create_time: @restaurant.create_time, creator_id: @restaurant.creator_id, description: @restaurant.description, modified_time: @restaurant.modified_time, modifier_id: @restaurant.modifier_id, name: @restaurant.name, owner_address: @restaurant.owner_address, owner_contact_no: @restaurant.owner_contact_no, owner_name: @restaurant.owner_name, status: @restaurant.status, user_id: @restaurant.user_id } }
    assert_redirected_to restaurant_url(@restaurant)
  end

  test "should destroy restaurant" do
    assert_difference('Restaurant.count', -1) do
      delete restaurant_url(@restaurant)
    end

    assert_redirected_to restaurants_url
  end
end
