# frozen_string_literal: true

require_relative "lib/temp_converter_gem/version"

Gem::Specification.new do |spec|
  spec.name = "temp_converter_gem"
  spec.version = TempConverterGem::VERSION
  spec.authors = ["MatusSN"]
  spec.email = ["matussn.erb@gmail.com"]

  spec.summary = "convert temperatures"
  spec.description = %q{convert temperatures simply and quickly!}
  spec.homepage = "https://github.com/MatusSN/temp_converter_gem"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
