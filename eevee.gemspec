require File.expand_path("../lib/eevee/version", __FILE__)

Gem::Specification.new do |s|
  s.name        = "eevee"
  s.version     = Eevee::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Keith Gable"]
  s.email       = ["ziggy@ignition-project.com"]
  s.homepage    = "http://github.com/ziggythehamster/eevee"
  s.summary     = "Eevee"
  s.description = "A way of managing a web-based mobile application in PhoneGap"

  s.required_rubygems_version = ">= 1.3.6"

  # lol - required for validation
  s.rubyforge_project         = "eevee"

  # If you have other dependencies, add them here
  # s.add_dependency "another", "~> 1.2"

  # If you need to check in files that aren't .rb files, add them here
  s.files        = Dir["{lib}/**/*.rb", "bin/*", "LICENSE", "*.md"]
  s.require_path = 'lib'

  # If you need an executable, add it here
  # s.executables = ["newgem"]

  # If you have C extensions, uncomment this line
  # s.extensions = "ext/extconf.rb"
end
