# -*- encoding: utf-8 -*-
$:.push File.expand_path('../lib', __FILE__)
require 'rails_validators/version'

Gem::Specification.new do |s|
  s.name        = 'rails_validators'
  s.version     = RailsValidators::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ['Willian Fernandes']
  s.email       = ['willian@willianfernandes.com.br']
  s.homepage    = ''
  s.summary     = %q{Some ActiveRecord validators.}
  s.description = %q{Improve your rails 3 application with some ActiveRecord validators.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ['lib']

  s.add_dependency 'activerecord', '>= 3.0.0'
  s.add_development_dependency 'rspec', '>= 2.0.0'
  s.add_development_dependency 'sqlite3-ruby'
  s.add_development_dependency 'ruby-debug19'
  s.add_development_dependency 'simplecov', '>= 0.3.7'
end
