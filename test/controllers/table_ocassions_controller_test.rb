require 'test_helper'

class TableOcassionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @table_ocassion = table_ocassions(:one)
  end

  test "should get index" do
    get table_ocassions_url
    assert_response :success
  end

  test "should get new" do
    get new_table_ocassion_url
    assert_response :success
  end

  test "should create table_ocassion" do
    assert_difference('TableOcassion.count') do
      post table_ocassions_url, params: { table_ocassion: { booking_by: @table_ocassion.booking_by, create_time: @table_ocassion.create_time, creator_id: @table_ocassion.creator_id, description: @table_ocassion.description, modified_time: @table_ocassion.modified_time, modifier_id: @table_ocassion.modifier_id, name: @table_ocassion.name, ocassion_type: @table_ocassion.ocassion_type, status: @table_ocassion.status, table_id: @table_ocassion.table_id } }
    end

    assert_redirected_to table_ocassion_url(TableOcassion.last)
  end

  test "should show table_ocassion" do
    get table_ocassion_url(@table_ocassion)
    assert_response :success
  end

  test "should get edit" do
    get edit_table_ocassion_url(@table_ocassion)
    assert_response :success
  end

  test "should update table_ocassion" do
    patch table_ocassion_url(@table_ocassion), params: { table_ocassion: { booking_by: @table_ocassion.booking_by, create_time: @table_ocassion.create_time, creator_id: @table_ocassion.creator_id, description: @table_ocassion.description, modified_time: @table_ocassion.modified_time, modifier_id: @table_ocassion.modifier_id, name: @table_ocassion.name, ocassion_type: @table_ocassion.ocassion_type, status: @table_ocassion.status, table_id: @table_ocassion.table_id } }
    assert_redirected_to table_ocassion_url(@table_ocassion)
  end

  test "should destroy table_ocassion" do
    assert_difference('TableOcassion.count', -1) do
      delete table_ocassion_url(@table_ocassion)
    end

    assert_redirected_to table_ocassions_url
  end
end
