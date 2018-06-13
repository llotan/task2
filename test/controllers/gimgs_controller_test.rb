require 'test_helper'

class GimgsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @gimg = gimgs(:one)
  end

  test "should get index" do
    get gimgs_url
    assert_response :success
  end

  test "should get new" do
    get new_gimg_url
    assert_response :success
  end

  test "should create gimg" do
    assert_difference('Gimg.count') do
      post gimgs_url, params: { gimg: { good_id: @gimg.good_id, link: @gimg.link } }
    end

    assert_redirected_to gimg_url(Gimg.last)
  end

  test "should show gimg" do
    get gimg_url(@gimg)
    assert_response :success
  end

  test "should get edit" do
    get edit_gimg_url(@gimg)
    assert_response :success
  end

  test "should update gimg" do
    patch gimg_url(@gimg), params: { gimg: { good_id: @gimg.good_id, link: @gimg.link } }
    assert_redirected_to gimg_url(@gimg)
  end

  test "should destroy gimg" do
    assert_difference('Gimg.count', -1) do
      delete gimg_url(@gimg)
    end

    assert_redirected_to gimgs_url
  end
end
