require 'test_helper'
require 'warden/test/helpers'

class WelcomeControllerTest < ActionController::TestCase

  test "should get home" do
    get 'home'
    assert_response :success
  end

end
