# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "rubycas_ajax_client/version"

Gem::Specification.new do |s|
  s.name        = "rubycas_ajax_client"
  s.version     = RubycasAjaxClient::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Michael He"]
  s.email       = ["hlxwell@gmail.com"]
  s.homepage    = ""
  s.summary     = %q{Ruby CAS AJAX Client}
  s.description = %q{Ruby CAS AJAX Client}

  s.rubyforge_project = "rubycas_ajax_client"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
