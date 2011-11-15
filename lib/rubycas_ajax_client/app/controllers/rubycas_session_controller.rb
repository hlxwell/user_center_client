class RubycasSessionController < ApplicationController
  def new
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