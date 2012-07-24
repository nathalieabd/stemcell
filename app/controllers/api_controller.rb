class ApiController < ApplicationController
  before_filter :require_sign_on

  def current_user_details
  	render :json => current_user
  end

  protected
  def require_sign_on
    render(:text => '<h1>Forbidden</h1>', :status => 403) unless user_signed_in? == true
  end
end
