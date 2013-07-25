$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "payu_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "payu_rails"
  s.version     = PayuRails::VERSION
  s.authors     = ["Piotr Kowalski "]
  s.email       = ["piotrek.kowalski@gmail.com"]
  s.homepage    = "http://kowalski-consulting.ch"
  s.summary     = "Rails wrapper for payu library."
  s.description = "Rails wrapper for payu library (old name platnosci.pl)."

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.0"
  s.add_dependency "payu", "~> 0.7.2"

  s.add_development_dependency "sqlite3"
end
