# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "guard/readme-on-github/version"

Gem::Specification.new do |s|
  s.name        = "guard-readme-on-github"
  s.version     = Guard::ReadmeOnGithubVersion::VERSION
  s.authors     = ["Bradley Grzesiak"]
  s.email       = ["brad@bendyworks.com"]
  s.homepage    = "https://github.com/listrophy/guard-readme-on-github"
  s.summary     = %q{Preview your README as if it's on github}
  s.description = %q{Preview your README as if it's on github}

  # s.rubyforge_project = "guard-readme-on-github"

  s.files         = `git ls-files`.split("\n")
  s.require_paths = ["lib"]

  s.add_dependency 'guard', '>= 0.10.0'
  s.add_dependency 'rdiscount', '~> 1.6'
end
