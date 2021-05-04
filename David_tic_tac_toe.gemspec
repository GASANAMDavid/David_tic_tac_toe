# frozen_string_literal: true

require_relative "lib/David_tic_tac_toe/version"

Gem::Specification.new do |spec|
  spec.name          = "David_tic_tac_toe"
  spec.version       = DavidTicTacToe::VERSION
  spec.authors       = ["David Gasana Manzi"]
  spec.email         = ["gmdavid59@gmail.com"]

  spec.summary       = "David Tic Tac toe game "
  # spec.description   = "TODO: Write a longer description or delete this line."
  spec.homepage      = "https://github.com/GASANAMDavid/David_tic_tac_toe"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.5.0")

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/GASANAMDavid/David_tic_tac_toe"
  spec.metadata["changelog_uri"] = "https://github.com/GASANAMDavid/David_tic_tac_toe/blob/main/CHANGELOG.md"

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
