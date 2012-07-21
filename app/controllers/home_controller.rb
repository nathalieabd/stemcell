class HomeController < ApplicationController
  def welcome
  	@c = current_user
  end
end
