require "test_helper"

class ReloadControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get reload_top_url
    assert_response :success
  end
end
