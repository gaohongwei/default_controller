# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'default_controller/version'

Gem::Specification.new do |spec|
  spec.name          = "default_controller"
  spec.version       = DefaultController::VERSION
  spec.authors       = ["Gaohong Wei"]
  spec.email         = ["gaohongwei@gmail.com"]
  spec.description   = %q{This gem creates the default actions for controllers.}
  spec.summary       = %q{This gem creates the default actions for controllers. The actual controllers can be empty if defaut actions are acceptable.
Usually the index action will be overriden.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
