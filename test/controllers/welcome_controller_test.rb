require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get setAdmin" do
    get :setAdmin
    assert_response :success
  end

end
