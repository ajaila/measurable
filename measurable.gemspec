$:.unshift File.expand_path('../lib/', __FILE__)

require 'measurable/version'
require 'date'

Gem::Specification.new do |gem|
  gem.name = "measurable"
  gem.version = Measurable::VERSION
  gem.date = Date.today.to_s
  gem.license = "MIT"
  gem.summary = %Q{A Ruby gem with a lot of distance measures for your projects.}
  gem.description = %Q{A Ruby gem with a lot of distance measures for your projects.}

  gem.authors = ["Carlos Agarie", "Max Makarochkin"]
  gem.email = "maxim.makarochkin@gmail.com"
  gem.homepage = "http://github.com/ajaila/measurable"

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }

  gem.require_paths = ["lib"]

  gem.required_ruby_version = '>= 1.9.3'

  gem.add_development_dependency 'bundler'
  gem.add_development_dependency 'rake', '~> 0.9'
  gem.add_development_dependency 'rspec', '~> 2.9.0'
end
