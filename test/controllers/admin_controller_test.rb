require 'test_helper'

class AdminControllerTest < ActionDispatch::IntegrationTest
  test "should get accounts" do
    get admin_accounts_url
    assert_response :success
  end

end
