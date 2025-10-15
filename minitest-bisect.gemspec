# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.summary = "This is not the correct gemspec."
  spec.authors = ["Ryan Davis"]
  spec.license = "MIT"
  spec.name          = "minitest-bisect"
  spec.version       = "1.8.0"

  spec.add_dependency "minitest-server", "~> 1.0"
  spec.add_dependency "path_expander", "~> 1.1"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
