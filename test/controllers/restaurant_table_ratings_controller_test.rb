require 'test_helper'

class RestaurantTableRatingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurant_table_rating = restaurant_table_ratings(:one)
  end

  test "should get index" do
    get restaurant_table_ratings_url
    assert_response :success
  end

  test "should get new" do
    get new_restaurant_table_rating_url
    assert_response :success
  end

  test "should create restaurant_table_rating" do
    assert_difference('RestaurantTableRating.count') do
      post restaurant_table_ratings_url, params: { restaurant_table_rating: { create_time: @restaurant_table_rating.create_time, creator_id: @restaurant_table_rating.creator_id, from_user_id: @restaurant_table_rating.from_user_id, modified_time: @restaurant_table_rating.modified_time, modifier_id: @restaurant_table_rating.modifier_id, rating: @restaurant_table_rating.rating, review: @restaurant_table_rating.review, status: @restaurant_table_rating.status, table_id: @restaurant_table_rating.table_id } }
    end

    assert_redirected_to restaurant_table_rating_url(RestaurantTableRating.last)
  end

  test "should show restaurant_table_rating" do
    get restaurant_table_rating_url(@restaurant_table_rating)
    assert_response :success
  end

  test "should get edit" do
    get edit_restaurant_table_rating_url(@restaurant_table_rating)
    assert_response :success
  end

  test "should update restaurant_table_rating" do
    patch restaurant_table_rating_url(@restaurant_table_rating), params: { restaurant_table_rating: { create_time: @restaurant_table_rating.create_time, creator_id: @restaurant_table_rating.creator_id, from_user_id: @restaurant_table_rating.from_user_id, modified_time: @restaurant_table_rating.modified_time, modifier_id: @restaurant_table_rating.modifier_id, rating: @restaurant_table_rating.rating, review: @restaurant_table_rating.review, status: @restaurant_table_rating.status, table_id: @restaurant_table_rating.table_id } }
    assert_redirected_to restaurant_table_rating_url(@restaurant_table_rating)
  end

  test "should destroy restaurant_table_rating" do
    assert_difference('RestaurantTableRating.count', -1) do
      delete restaurant_table_rating_url(@restaurant_table_rating)
    end

    assert_redirected_to restaurant_table_ratings_url
  end
end
