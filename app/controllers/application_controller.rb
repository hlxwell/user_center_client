class ApplicationController < ActionController::Base
  protect_from_forgery

  def current_user
    session[:cas_user]
  end
  helper_method :current_user
  
  def site_name
    case
    when request.host =~ /myasics/
      "My ASICS SSO Demo"
    when request.host =~ /asics/
      "ASICS SSO Demo"
    when request.host =~ /isafeplayer/
      "Different Domain SSO Demo"
    else
      "Demo"
    end
  end
  helper_method :site_name
end
