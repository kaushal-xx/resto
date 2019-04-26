require 'test_helper'

class RestaurantFloorPlansControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurant_floor_plan = restaurant_floor_plans(:one)
  end

  test "should get index" do
    get restaurant_floor_plans_url
    assert_response :success
  end

  test "should get new" do
    get new_restaurant_floor_plan_url
    assert_response :success
  end

  test "should create restaurant_floor_plan" do
    assert_difference('RestaurantFloorPlan.count') do
      post restaurant_floor_plans_url, params: { restaurant_floor_plan: { create_time: @restaurant_floor_plan.create_time, creator_id: @restaurant_floor_plan.creator_id, modified_time: @restaurant_floor_plan.modified_time, modifier_id: @restaurant_floor_plan.modifier_id, restaurant_id: @restaurant_floor_plan.restaurant_id, status: @restaurant_floor_plan.status, type: @restaurant_floor_plan.type } }
    end

    assert_redirected_to restaurant_floor_plan_url(RestaurantFloorPlan.last)
  end

  test "should show restaurant_floor_plan" do
    get restaurant_floor_plan_url(@restaurant_floor_plan)
    assert_response :success
  end

  test "should get edit" do
    get edit_restaurant_floor_plan_url(@restaurant_floor_plan)
    assert_response :success
  end

  test "should update restaurant_floor_plan" do
    patch restaurant_floor_plan_url(@restaurant_floor_plan), params: { restaurant_floor_plan: { create_time: @restaurant_floor_plan.create_time, creator_id: @restaurant_floor_plan.creator_id, modified_time: @restaurant_floor_plan.modified_time, modifier_id: @restaurant_floor_plan.modifier_id, restaurant_id: @restaurant_floor_plan.restaurant_id, status: @restaurant_floor_plan.status, type: @restaurant_floor_plan.type } }
    assert_redirected_to restaurant_floor_plan_url(@restaurant_floor_plan)
  end

  test "should destroy restaurant_floor_plan" do
    assert_difference('RestaurantFloorPlan.count', -1) do
      delete restaurant_floor_plan_url(@restaurant_floor_plan)
    end

    assert_redirected_to restaurant_floor_plans_url
  end
end
