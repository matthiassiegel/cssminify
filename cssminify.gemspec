# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "cssminify/version"

Gem::Specification.new do |s|
  s.name        = "cssminify"
  s.version     = CSSminify::VERSION
  s.author      = "Matthias Siegel"
  s.email       = "matthias.siegel@gmail.com"
  s.homepage    = "https://github.com/matthiassiegel/cssminify"
  s.summary     = "CSS minification with YUI compressor, but as native Ruby port."
  s.description = <<-EOF
    The CSSminify gem provides CSS compression using YUI compressor. Instead of wrapping around the Java or Javascript version of YUI compressor it uses a native Ruby port of the CSS engine. Therefore this gem has no dependencies except Bundler.
  EOF
  
  s.extra_rdoc_files = [
    "CHANGES.md",
    "LICENSE.md",
    "README.md"
  ]
  
  s.license = "MIT"
  s.rubyforge_project = "cssminify"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- spec/*`.split("\n")
  s.require_paths = ["lib"]

  s.add_development_dependency "rspec"
  
  s.add_runtime_dependency "bundler", "~> 1.0"
end
