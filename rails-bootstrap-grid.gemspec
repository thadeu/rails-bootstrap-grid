# coding: utf-8
lib = File.expand_path('../lib', __FILE__)

$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "rails-bootstrap-grid/version"

Gem::Specification.new do |spec|
  spec.name          = "rails-bootstrap-grid"
  spec.version       = RailsBootstrapGrid::VERSION
  spec.authors       = ["Thadeu Esteves Jr"]
  spec.email         = ["tadeuu@gmail.com"]

  spec.summary       = "A Rails plugin that contains helpers for Bootstrap Grid"
  spec.description   = "A Rails plugin that contains helpers for Bootstrap Grid"
  spec.homepage      = "https://github.com/Thadeu/rails-bootstrap-grid"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib", "lib/rails","lib/rails/bootstrap"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
