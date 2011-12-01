# Please change the content of
cas_logger = CASClient::Logger.new(File.join(Rails.root, 'log', "cas_#{Rails.env}.log"))
cas_logger.level = Logger::DEBUG

if Rails.env.production?
  CASClient::Frameworks::Rails::Filter.configure(
    :cas_base_url  => "http://cas.sso.theplant-dev.com/",
    :login_url     => "http://cas.sso.theplant-dev.com/login",
    :logout_url    => "http://cas.sso.theplant-dev.com/logout",
    :validate_url  => "http://cas.sso.theplant-dev.com/serviceValidate",
    :username_session_key => :cas_user,
    :extra_attributes_session_key => :cas_extra_attributes,
    :logger => cas_logger,
    :enable_single_sign_out => true
  )
else
  CASClient::Frameworks::Rails::Filter.configure(
    :cas_base_url  => "http://cas.lvh.me:3000/",
    :login_url     => "http://cas.lvh.me:3000/login",
    :logout_url    => "http://cas.lvh.me:3000/logout",
    :validate_url  => "http://cas.lvh.me:3000/serviceValidate",
    :username_session_key => :cas_user,
    :extra_attributes_session_key => :cas_extra_attributes,
    :logger => cas_logger,
    :enable_single_sign_out => true
  )
end