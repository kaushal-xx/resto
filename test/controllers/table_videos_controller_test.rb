require 'test_helper'

class TableVideosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @table_video = table_videos(:one)
  end

  test "should get index" do
    get table_videos_url
    assert_response :success
  end

  test "should get new" do
    get new_table_video_url
    assert_response :success
  end

  test "should create table_video" do
    assert_difference('TableVideo.count') do
      post table_videos_url, params: { table_video: { create_time: @table_video.create_time, creator_id: @table_video.creator_id, description: @table_video.description, modified_time: @table_video.modified_time, modifier_id: @table_video.modifier_id, name: @table_video.name, status: @table_video.status, table_id: @table_video.table_id, url: @table_video.url, video_type: @table_video.video_type } }
    end

    assert_redirected_to table_video_url(TableVideo.last)
  end

  test "should show table_video" do
    get table_video_url(@table_video)
    assert_response :success
  end

  test "should get edit" do
    get edit_table_video_url(@table_video)
    assert_response :success
  end

  test "should update table_video" do
    patch table_video_url(@table_video), params: { table_video: { create_time: @table_video.create_time, creator_id: @table_video.creator_id, description: @table_video.description, modified_time: @table_video.modified_time, modifier_id: @table_video.modifier_id, name: @table_video.name, status: @table_video.status, table_id: @table_video.table_id, url: @table_video.url, video_type: @table_video.video_type } }
    assert_redirected_to table_video_url(@table_video)
  end

  test "should destroy table_video" do
    assert_difference('TableVideo.count', -1) do
      delete table_video_url(@table_video)
    end

    assert_redirected_to table_videos_url
  end
end
