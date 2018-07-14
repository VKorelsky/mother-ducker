lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "test/version"

Gem::Specification.new do |gem|
  gem.name = 'motherducker'
  gem.summary = "some random summary for now"

  gem.version = MotherDucker::VERSION
  gem.files = `git ls-files`.split($\)
  gem.executables = ["motherducker"]

  gem.author = ['Victor Korelsky']
  gem.licenses = ['MIT']

  gem.add_development_dependency "bundler", "~> 1.16"
  gem.add_development_dependency "rake", "~> 10.0"
end
