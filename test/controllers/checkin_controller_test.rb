require 'test_helper'

class CheckinControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get checkin_index_url
    assert_response :success
  end

end
