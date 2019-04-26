require 'test_helper'

class TableSlotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @table_slot = table_slots(:one)
  end

  test "should get index" do
    get table_slots_url
    assert_response :success
  end

  test "should get new" do
    get new_table_slot_url
    assert_response :success
  end

  test "should create table_slot" do
    assert_difference('TableSlot.count') do
      post table_slots_url, params: { table_slot: { create_time: @table_slot.create_time, creator_id: @table_slot.creator_id, modified_time: @table_slot.modified_time, modifier_id: @table_slot.modifier_id, status: @table_slot.status, table_id: @table_slot.table_id } }
    end

    assert_redirected_to table_slot_url(TableSlot.last)
  end

  test "should show table_slot" do
    get table_slot_url(@table_slot)
    assert_response :success
  end

  test "should get edit" do
    get edit_table_slot_url(@table_slot)
    assert_response :success
  end

  test "should update table_slot" do
    patch table_slot_url(@table_slot), params: { table_slot: { create_time: @table_slot.create_time, creator_id: @table_slot.creator_id, modified_time: @table_slot.modified_time, modifier_id: @table_slot.modifier_id, status: @table_slot.status, table_id: @table_slot.table_id } }
    assert_redirected_to table_slot_url(@table_slot)
  end

  test "should destroy table_slot" do
    assert_difference('TableSlot.count', -1) do
      delete table_slot_url(@table_slot)
    end

    assert_redirected_to table_slots_url
  end
end
