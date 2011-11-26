module RubycasAjaxClient
  Rails.application.routes.draw do
    get "/login" => "rubycas_session#login", :as => :login
    get "/logout" => "rubycas_session#logout", :as => :logout

    get "/login_st" => "rubycas_session#login_st"
  end
end