Gem::Specification.new do |gem|
  gem.name = 'motherducker'
  gem.summary = "some random summary for now"

  gem.version = "2.1.0"
  gem.files = Dir['lib/**/*']
  gem.executables = ["motherducker"]

  gem.author = ['Victor Korelsky']
  gem.licenses = ['MIT']

  gem.add_development_dependency "bundler", "~> 1.16"
  gem.add_development_dependency "rake", "~> 10.0"
end
