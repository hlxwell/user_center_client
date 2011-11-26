class RubycasSessionController < ApplicationController
  before_filter CASClient::Frameworks::Rails::Filter, :only => [:login_st]

  def login_st
    render :nothing => true
  end

  # after get service tickets from user center, login all of these services
  def login
    @sts = params[:sts].split(",")
    @back_url = params[:back_url]
    render :layout => false
  end

  # back to user center to logout and redirect back
  def logout
    CASClient::Frameworks::Rails::Filter.logout(self, request.base_url)
  end
end