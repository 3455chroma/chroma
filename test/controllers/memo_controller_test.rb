require 'test_helper'

class MemoControllerTest < ActionDispatch::IntegrationTest
  test "should get top" do
    get memo_top_url
    assert_response :success
  end

end
