require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get Helloworld" do
    get home_Helloworld_url
    assert_response :success
  end

end
