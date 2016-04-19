# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ezdz-rails/version'

Gem::Specification.new do |spec|
  spec.name          = 'ezdz-rails'
  spec.version       = Ezdz::Rails::VERSION
  spec.authors       = ['Pedr Browne']
  spec.email         = ['pedr.browne@gmail.com']
  spec.description   = "Make Jay Salvat's Ezdz [izy-dizy] available to Rails"
  spec.summary       = "This Gem integrates Jay Salvat's Ezdz [izy-dizy] " \
                       'with Rails, exposing its JavaScript and CSS ' \
                       'assets via a Rails Engine.'
  spec.homepage      = 'https://github.com/YourCursus/ezdz-rails'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($RS)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'railties', '>= 3.2', '< 5.0'
  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
