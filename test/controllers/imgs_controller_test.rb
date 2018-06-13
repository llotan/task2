require 'test_helper'

class ImgsControllerTest < ActionDispatch::IntegrationTest
  test "should get link:string" do
    get imgs_link:string_url
    assert_response :success
  end

  test "should get good_id:integer" do
    get imgs_good_id:integer_url
    assert_response :success
  end

end
