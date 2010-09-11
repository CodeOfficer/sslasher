# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ssl_magic}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Russell Jones"]
  s.date = %q{2010-09-11}
  s.default_executable = %q{ssl_magic}
  s.email = %q{spam@codeofficer.com}
  s.executables = ["ssl_magic"]
  s.files = ["bin", "lib/ssl_magic.rb", "bin/ssl_magic"]
  s.homepage = %q{http://yoursite.example.com}
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.7}
  s.summary = %q{What this thing does}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
