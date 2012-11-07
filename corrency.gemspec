# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "corrency/version"

Gem::Specification.new do |s|
  s.name        = "corrency"
  s.version     = Corrency::VERSION
  s.authors     = ["Robert Williams"]
  s.email       = ["rob@r-williams.com"]
  s.homepage    = ""
  s.summary     = %q{Adds Ecommerce Extensions to Various Core Libraries}
  s.description = %q{Adds Ecommerce Extensions to Various Core Libraries it really does}

  s.rubyforge_project = "corrency"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  s.add_development_dependency "rake"
  s.add_development_dependency "cucumber"
end
