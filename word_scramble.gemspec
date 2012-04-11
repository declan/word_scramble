# -*- encoding: utf-8 -*-
require File.expand_path('../lib/word_scramble/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Declan Frye"]
  gem.email         = ["deckleberryfrye@gmail.com"]
  gem.description   = %q{Take a string of scrambled characters and find all the words that can be made from those characters.}
  gem.summary       = %q{Written to solve the Word Scramble game that they give out on Virgin Airlines when the flight is delayed.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "word_scramble"
  gem.require_paths = ["lib"]
  gem.version       = WordScramble::VERSION

  gem.add_development_dependency "rspec"
end
