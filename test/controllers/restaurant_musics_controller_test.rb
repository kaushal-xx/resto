require 'test_helper'

class RestaurantMusicsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurant_music = restaurant_musics(:one)
  end

  test "should get index" do
    get restaurant_musics_url
    assert_response :success
  end

  test "should get new" do
    get new_restaurant_music_url
    assert_response :success
  end

  test "should create restaurant_music" do
    assert_difference('RestaurantMusic.count') do
      post restaurant_musics_url, params: { restaurant_music: { create_time: @restaurant_music.create_time, creator_id: @restaurant_music.creator_id, description: @restaurant_music.description, modified_time: @restaurant_music.modified_time, modifier_id: @restaurant_music.modifier_id, music_type: @restaurant_music.music_type, name: @restaurant_music.name, restaurant_id: @restaurant_music.restaurant_id, status: @restaurant_music.status } }
    end

    assert_redirected_to restaurant_music_url(RestaurantMusic.last)
  end

  test "should show restaurant_music" do
    get restaurant_music_url(@restaurant_music)
    assert_response :success
  end

  test "should get edit" do
    get edit_restaurant_music_url(@restaurant_music)
    assert_response :success
  end

  test "should update restaurant_music" do
    patch restaurant_music_url(@restaurant_music), params: { restaurant_music: { create_time: @restaurant_music.create_time, creator_id: @restaurant_music.creator_id, description: @restaurant_music.description, modified_time: @restaurant_music.modified_time, modifier_id: @restaurant_music.modifier_id, music_type: @restaurant_music.music_type, name: @restaurant_music.name, restaurant_id: @restaurant_music.restaurant_id, status: @restaurant_music.status } }
    assert_redirected_to restaurant_music_url(@restaurant_music)
  end

  test "should destroy restaurant_music" do
    assert_difference('RestaurantMusic.count', -1) do
      delete restaurant_music_url(@restaurant_music)
    end

    assert_redirected_to restaurant_musics_url
  end
end
