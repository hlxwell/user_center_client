class HomeController < ApplicationController
  before_filter CASClient::Frameworks::Rails::Filter, :only => [:privacy]

  def index
  end

  def privacy
  end
end
