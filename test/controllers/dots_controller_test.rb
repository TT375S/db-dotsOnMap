require 'test_helper'

class DotsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dots_index_url
    assert_response :success
  end

  test "should get show" do
    get dots_show_url
    assert_response :success
  end

end
