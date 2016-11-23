$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "open_project/themes/plri/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "openproject-themes-plri"
  s.version     = OpenProject::Themes::PLRI::VERSION
  s.authors     = ["PLRI"]
  s.email       = ["openproject@plri.de"]
  s.homepage    = "https://plri.de"
  s.summary     = "PLRI theme for OpenProject"
  s.description = "Theme with matching red PLRI colors"

  s.files = Dir["{app,lib}/**/*", "Rakefile", "README.rdoc"]

  s.add_dependency 'rails', '~> 5.0'
end
