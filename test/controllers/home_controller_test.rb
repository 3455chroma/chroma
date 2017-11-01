require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get kari" do
    get home_kari_url
    assert_response :success
  end

end
