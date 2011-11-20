class ApplicationController < ActionController::Base
  protect_from_forgery

  # This will allow the user to view the index page without authentication
  # but will process CAS authentication data if the user already
  # has an SSO session open.
  # before_filter CASClient::Frameworks::Rails::GatewayFilter

  # This requires the user to be authenticated for viewing allother pages.
  # before_filter CASClient::Frameworks::Rails::Filter

  # @username = session[:cas_user]
  # @extra_attributes = session[:cas_extra_attributes]
  # @username = session[:cas_user]
  # CASClient::Frameworks::Rails::Filter.logout(self)
  # @login_url = CASClient::Frameworks::Rails::Filter.login_url(self)

  def current_user
    session[:cas_user]
  end
  helper_method :current_user
end
