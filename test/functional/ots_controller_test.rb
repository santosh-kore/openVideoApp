require 'test_helper'

class OtsControllerTest < ActionController::TestCase
  test "should get generateSessionId" do
    get :generateSessionId
    assert_response :success
  end

end
