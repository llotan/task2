require 'test_helper'

class GoodimgsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @goodimg = goodimgs(:one)
  end

  test "should get index" do
    get goodimgs_url
    assert_response :success
  end

  test "should get new" do
    get new_goodimg_url
    assert_response :success
  end

  test "should create goodimg" do
    assert_difference('Goodimg.count') do
      post goodimgs_url, params: { goodimg: { goodid: @goodimg.goodid, link: @goodimg.link } }
    end

    assert_redirected_to goodimg_url(Goodimg.last)
  end

  test "should show goodimg" do
    get goodimg_url(@goodimg)
    assert_response :success
  end

  test "should get edit" do
    get edit_goodimg_url(@goodimg)
    assert_response :success
  end

  test "should update goodimg" do
    patch goodimg_url(@goodimg), params: { goodimg: { goodid: @goodimg.goodid, link: @goodimg.link } }
    assert_redirected_to goodimg_url(@goodimg)
  end

  test "should destroy goodimg" do
    assert_difference('Goodimg.count', -1) do
      delete goodimg_url(@goodimg)
    end

    assert_redirected_to goodimgs_url
  end
end
