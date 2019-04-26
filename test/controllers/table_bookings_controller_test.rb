require 'test_helper'

class TableBookingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @table_booking = table_bookings(:one)
  end

  test "should get index" do
    get table_bookings_url
    assert_response :success
  end

  test "should get new" do
    get new_table_booking_url
    assert_response :success
  end

  test "should create table_booking" do
    assert_difference('TableBooking.count') do
      post table_bookings_url, params: { table_booking: { booking_by: @table_booking.booking_by, booking_date: @table_booking.booking_date, booking_time_from: @table_booking.booking_time_from, booking_time_to: @table_booking.booking_time_to, create_time: @table_booking.create_time, creator_id: @table_booking.creator_id, modified_time: @table_booking.modified_time, modifier_id: @table_booking.modifier_id, qr_code: @table_booking.qr_code, status: @table_booking.status, table_id: @table_booking.table_id } }
    end

    assert_redirected_to table_booking_url(TableBooking.last)
  end

  test "should show table_booking" do
    get table_booking_url(@table_booking)
    assert_response :success
  end

  test "should get edit" do
    get edit_table_booking_url(@table_booking)
    assert_response :success
  end

  test "should update table_booking" do
    patch table_booking_url(@table_booking), params: { table_booking: { booking_by: @table_booking.booking_by, booking_date: @table_booking.booking_date, booking_time_from: @table_booking.booking_time_from, booking_time_to: @table_booking.booking_time_to, create_time: @table_booking.create_time, creator_id: @table_booking.creator_id, modified_time: @table_booking.modified_time, modifier_id: @table_booking.modifier_id, qr_code: @table_booking.qr_code, status: @table_booking.status, table_id: @table_booking.table_id } }
    assert_redirected_to table_booking_url(@table_booking)
  end

  test "should destroy table_booking" do
    assert_difference('TableBooking.count', -1) do
      delete table_booking_url(@table_booking)
    end

    assert_redirected_to table_bookings_url
  end
end
