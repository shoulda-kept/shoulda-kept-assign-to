$LOAD_PATH << File.join(File.dirname(__FILE__), 'lib')
require 'shoulda/matchers/version'

Gem::Specification.new do |s|
  s.name        = "shoulda-kept-assign-to"
  s.version     = Shoulda::Matchers::VERSION.dup
  s.authors     = ["Angel Irizarry", "Ben Sedat"]
  s.date        = Time.now.strftime("%Y-%m-%d")
  s.email       = "engineers@tinfoilsecurity.com"
  s.homepage    = "https://www.tinfoilsecurity.com"
  s.summary     = "We miss the assign_to matcher in shoulda-matchers."
  s.license     = "MIT"
  s.description = "We miss the assign_to matcher in shoulda-matchers."

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.required_ruby_version = '>= 1.9.2'
  s.add_dependency('shoulda-matchers', '>= 2.1.0')

  s.add_development_dependency('bundler')
  s.add_development_dependency('rake')
  s.add_development_dependency('appraisal')
  s.add_development_dependency('rails', '~> 3')
  s.add_development_dependency('sqlite3')
  s.add_development_dependency('rspec-rails')
end
