require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  test 'should get home view' do
    get 'home'
    assert_response :success
  end

end
