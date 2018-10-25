require 'test_helper'

class DancersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dancers_index_url
    assert_response :success
  end

end
