class Api::CurrentUserController < ApplicationController
  before_filter :require_sign_on

  def show
    render :json => current_user
  end

  protected
  def require_sign_on
    render(:text => I18n.translate(:forbidden_resource), :status => 403) unless user_signed_in? == true
  end
end
