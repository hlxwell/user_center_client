require 'active_support'
require "action_view/template"
require 'rubycas_ajax_client/engine'

module RubycasAjaxClient
  extend ::ActiveSupport::Autoload
  autoload :Base
end