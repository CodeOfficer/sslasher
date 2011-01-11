# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "sslasher"

Gem::Specification.new do |s|
  s.name            = "sslasher"
  s.version         = Sslasher::VERSION
	s.platform        = Gem::Platform::RUBY
  s.authors         = ["Russell Jones"]
  s.email           = ["codeofficer@gmail.com"]
	s.homepage        = "http://www.codeofficer.com"
  s.summary         = "A quick SSL dev setup."
	s.description     = "Using nginx to quickly set up ssl for local development."
  s.date            = "2010-09-13"

	s.files           = `git ls-files`.split("\n")
	s.test_files      = `git ls-files -- {test,spec,features}/*`.split("\n")
	s.executables     = `git ls-files -- bin/*`.split("\n").map{|f| File.basename(f)}
	s.require_paths   = ["lib"]
end
