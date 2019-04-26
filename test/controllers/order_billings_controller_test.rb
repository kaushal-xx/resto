require 'test_helper'

class OrderBillingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @order_billing = order_billings(:one)
  end

  test "should get index" do
    get order_billings_url
    assert_response :success
  end

  test "should get new" do
    get new_order_billing_url
    assert_response :success
  end

  test "should create order_billing" do
    assert_difference('OrderBilling.count') do
      post order_billings_url, params: { order_billing: { billing_amount: @order_billing.billing_amount, billing_method: @order_billing.billing_method, billing_status: @order_billing.billing_status, discount: @order_billing.discount, note: @order_billing.note, order_billingscol: @order_billing.order_billingscol, tax: @order_billing.tax } }
    end

    assert_redirected_to order_billing_url(OrderBilling.last)
  end

  test "should show order_billing" do
    get order_billing_url(@order_billing)
    assert_response :success
  end

  test "should get edit" do
    get edit_order_billing_url(@order_billing)
    assert_response :success
  end

  test "should update order_billing" do
    patch order_billing_url(@order_billing), params: { order_billing: { billing_amount: @order_billing.billing_amount, billing_method: @order_billing.billing_method, billing_status: @order_billing.billing_status, discount: @order_billing.discount, note: @order_billing.note, order_billingscol: @order_billing.order_billingscol, tax: @order_billing.tax } }
    assert_redirected_to order_billing_url(@order_billing)
  end

  test "should destroy order_billing" do
    assert_difference('OrderBilling.count', -1) do
      delete order_billing_url(@order_billing)
    end

    assert_redirected_to order_billings_url
  end
end
