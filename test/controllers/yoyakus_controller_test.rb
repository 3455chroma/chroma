require 'test_helper'

class YoyakusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @yoyaku = yoyakus(:one)
  end

  test "should get index" do
    get yoyakus_url
    assert_response :success
  end

  test "should get new" do
    get new_yoyaku_url
    assert_response :success
  end

  test "should create yoyaku" do
    assert_difference('Yoyaku.count') do
      post yoyakus_url, params: { yoyaku: { amazon: @yoyaku.amazon, rakuten: @yoyaku.rakuten, url: @yoyaku.url } }
    end

    assert_redirected_to yoyaku_url(Yoyaku.last)
  end

  test "should show yoyaku" do
    get yoyaku_url(@yoyaku)
    assert_response :success
  end

  test "should get edit" do
    get edit_yoyaku_url(@yoyaku)
    assert_response :success
  end

  test "should update yoyaku" do
    patch yoyaku_url(@yoyaku), params: { yoyaku: { amazon: @yoyaku.amazon, rakuten: @yoyaku.rakuten, url: @yoyaku.url } }
    assert_redirected_to yoyaku_url(@yoyaku)
  end

  test "should destroy yoyaku" do
    assert_difference('Yoyaku.count', -1) do
      delete yoyaku_url(@yoyaku)
    end

    assert_redirected_to yoyakus_url
  end
end
