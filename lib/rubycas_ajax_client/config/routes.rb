module RubycasAjaxClient
  Rails.application.routes.draw do
    get "/login" => "rubycas_session#login", :as => :login
    get "/logout" => "rubycas_session#logout", :as => :logout
  end
end