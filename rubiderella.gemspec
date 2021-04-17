# frozen_string_literal: true

require_relative 'lib/rubiderella/version'

Gem::Specification.new do |spec|
  spec.name          = 'rubiderella'
  spec.version       = Rubiderella::VERSION
  spec.authors       = ['hikko624']
  spec.email         = ['hikko624@gmail.com']

  spec.summary       = 'Idol m@ster cinderella girls starlight stage'
  spec.description   = 'Idol m@ster cinderella girls starlight stage'
  spec.homepage      = 'https://github.com/hikko624/rubiderella'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.5.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage
  spec.metadata['changelog_uri'] = "#{spec.homepage}/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.add_dependency 'activesupport', '>= 6.0.0'
  spec.add_dependency 'rake', '~> 13.0'
  spec.add_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'codecov', '>= 0.5.1'
  spec.add_development_dependency 'pry', '>= 0.10'
  spec.add_development_dependency 'pry-byebug', '>= 3.9'
  spec.add_development_dependency 'pry-doc', '>= 0.6'
  spec.add_development_dependency 'rspec', '>= 3.10'
  spec.add_development_dependency 'rspec-parameterized', '>= 0.4.2'
  spec.add_development_dependency 'rubocop', '>= 1.11'
  spec.add_development_dependency 'simplecov', '>= 0.21'
  spec.add_development_dependency 'webrick', '>= 1.5.0'
end
