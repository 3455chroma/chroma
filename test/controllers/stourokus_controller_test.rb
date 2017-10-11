require 'test_helper'

class StourokusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stouroku = stourokus(:one)
  end

  test "should get index" do
    get stourokus_url
    assert_response :success
  end

  test "should get new" do
    get new_stouroku_url
    assert_response :success
  end

  test "should create stouroku" do
    assert_difference('Stouroku.count') do
      post stourokus_url, params: { stouroku: { genre_id;integer: @stouroku.genre_id;integer, hatsubaiday: @stouroku.hatsubaiday, hito: @stouroku.hito, money: @stouroku.money, name: @stouroku.name, tenpo: @stouroku.tenpo, tokuten: @stouroku.tokuten, user_id: @stouroku.user_id } }
    end

    assert_redirected_to stouroku_url(Stouroku.last)
  end

  test "should show stouroku" do
    get stouroku_url(@stouroku)
    assert_response :success
  end

  test "should get edit" do
    get edit_stouroku_url(@stouroku)
    assert_response :success
  end

  test "should update stouroku" do
    patch stouroku_url(@stouroku), params: { stouroku: { genre_id;integer: @stouroku.genre_id;integer, hatsubaiday: @stouroku.hatsubaiday, hito: @stouroku.hito, money: @stouroku.money, name: @stouroku.name, tenpo: @stouroku.tenpo, tokuten: @stouroku.tokuten, user_id: @stouroku.user_id } }
    assert_redirected_to stouroku_url(@stouroku)
  end

  test "should destroy stouroku" do
    assert_difference('Stouroku.count', -1) do
      delete stouroku_url(@stouroku)
    end

    assert_redirected_to stourokus_url
  end
end
