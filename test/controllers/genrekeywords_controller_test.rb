require 'test_helper'

class GenrekeywordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @genrekeyword = genrekeywords(:one)
  end

  test "should get index" do
    get genrekeywords_url
    assert_response :success
  end

  test "should get new" do
    get new_genrekeyword_url
    assert_response :success
  end

  test "should create genrekeyword" do
    assert_difference('Genrekeyword.count') do
      post genrekeywords_url, params: { genrekeyword: { genre_id: @genrekeyword.genre_id, keyword: @genrekeyword.keyword, yoyaku_id: @genrekeyword.yoyaku_id } }
    end

    assert_redirected_to genrekeyword_url(Genrekeyword.last)
  end

  test "should show genrekeyword" do
    get genrekeyword_url(@genrekeyword)
    assert_response :success
  end

  test "should get edit" do
    get edit_genrekeyword_url(@genrekeyword)
    assert_response :success
  end

  test "should update genrekeyword" do
    patch genrekeyword_url(@genrekeyword), params: { genrekeyword: { genre_id: @genrekeyword.genre_id, keyword: @genrekeyword.keyword, yoyaku_id: @genrekeyword.yoyaku_id } }
    assert_redirected_to genrekeyword_url(@genrekeyword)
  end

  test "should destroy genrekeyword" do
    assert_difference('Genrekeyword.count', -1) do
      delete genrekeyword_url(@genrekeyword)
    end

    assert_redirected_to genrekeywords_url
  end
end
