# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "atlas_client/version"

Gem::Specification.new do |s|
  s.name        = "atlas_client"
  s.version     = AtlasClient::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Chris Aitchison"]
  s.email       = ["chris.aitchison@lonelyplanet.com.au"]
  s.homepage    = "http://www.lonelyplanet.com"
  s.summary     = %q{A client for the Atlas API}
  s.description = %q{A client for the Atlas API}

  s.rubyforge_project = "atlas_client"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
