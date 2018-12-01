require 'test_helper'

class NotdancerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get notdancer_index_url
    assert_response :success
  end

end
