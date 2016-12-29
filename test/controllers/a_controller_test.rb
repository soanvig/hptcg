require 'test_helper'

class AControllerTest < ActionDispatch::IntegrationTest
  test "should get b" do
    get a_b_url
    assert_response :success
  end

end
