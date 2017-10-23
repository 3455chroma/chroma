require 'test_helper'

class MtourokusControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mtouroku = mtourokus(:one)
  end

  test "should get index" do
    get mtourokus_url
    assert_response :success
  end

  test "should get new" do
    get new_mtouroku_url
    assert_response :success
  end

  test "should create mtouroku" do
    assert_difference('Mtouroku.count') do
      post mtourokus_url, params: { mtouroku: { genre_id: @mtouroku.genre_id, id: @mtouroku.id, memo: @mtouroku.memo } }
    end

    assert_redirected_to mtouroku_url(Mtouroku.last)
  end

  test "should show mtouroku" do
    get mtouroku_url(@mtouroku)
    assert_response :success
  end

  test "should get edit" do
    get edit_mtouroku_url(@mtouroku)
    assert_response :success
  end

  test "should update mtouroku" do
    patch mtouroku_url(@mtouroku), params: { mtouroku: { genre_id: @mtouroku.genre_id, id: @mtouroku.id, memo: @mtouroku.memo } }
    assert_redirected_to mtouroku_url(@mtouroku)
  end

  test "should destroy mtouroku" do
    assert_difference('Mtouroku.count', -1) do
      delete mtouroku_url(@mtouroku)
    end

    assert_redirected_to mtourokus_url
  end
end
