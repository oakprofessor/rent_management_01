require 'test_helper'

class Admin::HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get room" do
    get admin_homes_room_url
    assert_response :success
  end

end
