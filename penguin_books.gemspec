# frozen_string_literal: true

require_relative "lib/penguin_books/version"

Gem::Specification.new do |spec|
  spec.name          = "penguin_books"
  spec.version       = PenguinBooks::VERSION
  spec.authors       = ["Gabriela Ruvalcaba"]
  spec.email         = ["gabrielaelenadesigns@gmail.com"]

  spec.summary       = "Penguin book list."
  spec.description   = "Penguin book list new and upcoming books."
  spec.homepage      = "https://medium.com/@gabrielaelena"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://medium.com/@gabrielaelena"
  spec.metadata["changelog_uri"] = "https://medium.com/@gabrielaelena"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~>10.0"
  spec.add_development_dependency "pry"
  spec.add_dependency "nokogiri"

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, checkout our
  # guide at: https://bundler.io/guides/creating_gem.html
end
