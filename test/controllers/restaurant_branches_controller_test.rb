require 'test_helper'

class RestaurantBranchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurant_branch = restaurant_branches(:one)
  end

  test "should get index" do
    get restaurant_branches_url
    assert_response :success
  end

  test "should get new" do
    get new_restaurant_branch_url
    assert_response :success
  end

  test "should create restaurant_branch" do
    assert_difference('RestaurantBranch.count') do
      post restaurant_branches_url, params: { restaurant_branch: { brand_logo_url: @restaurant_branch.brand_logo_url, create_time: @restaurant_branch.create_time, creator_id: @restaurant_branch.creator_id, description: @restaurant_branch.description, email: @restaurant_branch.email, location_id: @restaurant_branch.location_id, modified_time: @restaurant_branch.modified_time, modifier_id: @restaurant_branch.modifier_id, name: @restaurant_branch.name, phone: @restaurant_branch.phone, restaurant_id: @restaurant_branch.restaurant_id, status: @restaurant_branch.status } }
    end

    assert_redirected_to restaurant_branch_url(RestaurantBranch.last)
  end

  test "should show restaurant_branch" do
    get restaurant_branch_url(@restaurant_branch)
    assert_response :success
  end

  test "should get edit" do
    get edit_restaurant_branch_url(@restaurant_branch)
    assert_response :success
  end

  test "should update restaurant_branch" do
    patch restaurant_branch_url(@restaurant_branch), params: { restaurant_branch: { brand_logo_url: @restaurant_branch.brand_logo_url, create_time: @restaurant_branch.create_time, creator_id: @restaurant_branch.creator_id, description: @restaurant_branch.description, email: @restaurant_branch.email, location_id: @restaurant_branch.location_id, modified_time: @restaurant_branch.modified_time, modifier_id: @restaurant_branch.modifier_id, name: @restaurant_branch.name, phone: @restaurant_branch.phone, restaurant_id: @restaurant_branch.restaurant_id, status: @restaurant_branch.status } }
    assert_redirected_to restaurant_branch_url(@restaurant_branch)
  end

  test "should destroy restaurant_branch" do
    assert_difference('RestaurantBranch.count', -1) do
      delete restaurant_branch_url(@restaurant_branch)
    end

    assert_redirected_to restaurant_branches_url
  end
end
