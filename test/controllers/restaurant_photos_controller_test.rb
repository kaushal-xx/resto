require 'test_helper'

class RestaurantPhotosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurant_photo = restaurant_photos(:one)
  end

  test "should get index" do
    get restaurant_photos_url
    assert_response :success
  end

  test "should get new" do
    get new_restaurant_photo_url
    assert_response :success
  end

  test "should create restaurant_photo" do
    assert_difference('RestaurantPhoto.count') do
      post restaurant_photos_url, params: { restaurant_photo: { create_time: @restaurant_photo.create_time, creator_id: @restaurant_photo.creator_id, description: @restaurant_photo.description, modified_time: @restaurant_photo.modified_time, modifier_id: @restaurant_photo.modifier_id, name: @restaurant_photo.name, photo_type: @restaurant_photo.photo_type, restaurant_id: @restaurant_photo.restaurant_id, status: @restaurant_photo.status, url: @restaurant_photo.url } }
    end

    assert_redirected_to restaurant_photo_url(RestaurantPhoto.last)
  end

  test "should show restaurant_photo" do
    get restaurant_photo_url(@restaurant_photo)
    assert_response :success
  end

  test "should get edit" do
    get edit_restaurant_photo_url(@restaurant_photo)
    assert_response :success
  end

  test "should update restaurant_photo" do
    patch restaurant_photo_url(@restaurant_photo), params: { restaurant_photo: { create_time: @restaurant_photo.create_time, creator_id: @restaurant_photo.creator_id, description: @restaurant_photo.description, modified_time: @restaurant_photo.modified_time, modifier_id: @restaurant_photo.modifier_id, name: @restaurant_photo.name, photo_type: @restaurant_photo.photo_type, restaurant_id: @restaurant_photo.restaurant_id, status: @restaurant_photo.status, url: @restaurant_photo.url } }
    assert_redirected_to restaurant_photo_url(@restaurant_photo)
  end

  test "should destroy restaurant_photo" do
    assert_difference('RestaurantPhoto.count', -1) do
      delete restaurant_photo_url(@restaurant_photo)
    end

    assert_redirected_to restaurant_photos_url
  end
end
