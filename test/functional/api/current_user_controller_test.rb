require 'test_helper'

class Api::CurrentUserControllerTest < ActionController::TestCase
  include Devise::TestHelpers

  test 'should get json if user is signed in' do
    sign_in users(:alfred)
    get :show
    assert_response 200
    current_user_hash = JSON.parse(response.body)
    assert current_user_hash['name'] == users(:alfred).name
    assert current_user_hash['email'] == users(:alfred).email
    # TODO: could fill this out to include every field explicitly
  end

  test 'should get 403 if user is not signed in' do
    get :show
    assert_response 403
    assert response.body == I18n.translate(:forbidden_resource)
  end

end