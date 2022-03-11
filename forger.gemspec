# frozen_string_literal: true

require_relative "lib/forger/version"

Gem::Specification.new do |spec|
  spec.name          = "forger"
  spec.version       = Forger::VERSION
  spec.authors       = ["masa-oh"]
  spec.email         = ["makun0084pc@gmail.com"]

  spec.summary       = "test gem"
  spec.description   = "test gem"
  spec.homepage      = "https://github.com/masa-oh/forger"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "https://rubygems.org/"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/masa-oh/forger"
  spec.metadata["changelog_uri"] = "https://github.com/masa-oh/forger/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency('i18n', '>= 1.8.11', '< 2')
  
  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
