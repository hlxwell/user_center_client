class HomeController < ApplicationController
  # before_filter CASClient::Frameworks::Rails::GatewayFilter, :only => [:index]
  before_filter CASClient::Frameworks::Rails::Filter, :only => [:privacy]

  def index
  end

  def privacy
  end

  def login
    @sts = params[:sts].split(",")
    @back_url = params[:back_url]
    render :layout => false
  end

  def logout
    CASClient::Frameworks::Rails::Filter.logout(self, request.base_url)
  end
end
