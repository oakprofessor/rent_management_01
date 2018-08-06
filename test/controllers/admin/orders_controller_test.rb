require 'test_helper'

class Admin::OrdersControllerTest < ActionDispatch::IntegrationTest
  test "should get admin_order" do
    get admin_orders_admin_order_url
    assert_response :success
  end

  test "should get owner_order" do
    get admin_orders_owner_order_url
    assert_response :success
  end

  test "should get _admin_order" do
    get admin_orders__admin_order_url
    assert_response :success
  end

  test "should get owner_order" do
    get admin_orders_owner_order_url
    assert_response :success
  end

end
