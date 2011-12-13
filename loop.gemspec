# -*- encoding: utf-8 -*-
require File.expand_path('../lib/loop/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ['Davide D\'Agostino']
  gem.email         = ['d.dagostino@lipsiasoft.com']
  gem.description   = 'A tiny Ruby program used to periodically execute a command'
  gem.summary       = 'A tiny Ruby program used to periodically execute a command'
  gem.homepage      = 'https://github.com/DAddYE/loop'

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = 'loop'
  gem.require_paths = ['lib']
  gem.version       = Loop::VERSION
end
