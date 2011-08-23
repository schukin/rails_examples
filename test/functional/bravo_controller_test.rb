require 'test_helper'

class BravoControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

end
