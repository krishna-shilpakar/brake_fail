# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "hoptoad_notify/version"

Gem::Specification.new do |s|
  s.name        = "hoptoad_notify"
  s.version     = HoptoadNotify::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["TODO: Write your name"]
  s.email       = ["TODO: Write your email address"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "hoptoad_notify"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
  
  s.add_dependency 'growl_notify'
  s.add_dependency 'activeresource'
  s.add_dependency 'sqlite3'
  s.add_dependency 'sequel'
  s.add_dependency 'thor'
  s.add_dependency 'forever'
  
  s.add_development_dependency "ruby-debug19"
end
