# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "ruby-sendhub/version"

Gem::Specification.new do |s|
  s.name        = "ruby-sendhub"
  s.version     = Ruby::Sendhub::VERSION
  s.authors     = ["SoonKhen OwYong"]
  s.email       = ["dude@owyong.sk"]
  s.homepage    = "https://github.com/skowyong/ruby-sendhub"
  s.summary     = %q{A simple Ruby wrapper for SendHub API}
  s.description = %q{My first gem and no tests yet. Ruby wrapper for SendHub API}

  s.rubyforge_project = "ruby-sendhub"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"

	s.add_runtime_dependency "httparty"
 	s.add_runtime_dependency "json"
end
