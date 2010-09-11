# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{sslasher}
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Russell Jones"]
  s.date = %q{2010-09-11}
  s.default_executable = %q{sslasher}
  s.email = %q{spam@codeofficer.com}
  s.executables = ["sslasher"]
  s.extra_rdoc_files = ["README"]
  s.files = ["NOTES.txt", "README", "lib/generators/sslasher/sslasher_generator.rb", "lib/generators/sslasher/templates/sslasher.erb", "lib/generators/sslasher/USAGE", "lib/sslasher.rb", "bin/sslasher"]
  s.homepage = %q{http://yoursite.example.com}
  s.rdoc_options = ["--main", "README"]
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
