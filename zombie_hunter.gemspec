
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "zombie_hunter/version"

Gem::Specification.new do |spec|
  spec.name          = "zombie_hunter"
  spec.version       = ZombieHunter::VERSION
  spec.authors       = ["k-yamada"]
  spec.email         = ["yamadakazu45@gmail.com"]

  spec.summary       = %q{ZombieHunter is a tool to hunt a zombie process.}
  spec.homepage      = "https://github.com/k-yamada/zombie_hunter"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16.a"
  spec.add_development_dependency "rake", "~> 10.0"
end
