$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "letter_notify/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "letter_notify"
  s.version     = LetterNotify::VERSION
  s.authors     = ["Oleg Grigoriev"]
  s.email       = ["mehanoid.ru@gmail.com"]
  s.summary     = "Show notifications about new emails using libnotify"
  s.description = "Show notifications about new emails using libnotify"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.require_path = "lib"

  s.add_dependency "rails"
  s.add_dependency "notifier"
end
