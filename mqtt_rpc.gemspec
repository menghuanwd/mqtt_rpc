# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mqtt_rpc/version'

Gem::Specification.new do |spec|
  spec.name          = 'mqtt_rpc'
  spec.version       = MQTTRpc::VERSION
  spec.authors       = ['menghuanwd']
  spec.email         = ['651019063@qq.com']

  spec.summary       = 'mqtt_rpc'
  spec.description   = 'mqtt_rpc'
  spec.homepage      = 'https://github.com/menghuanwd/mqtt_rpc'
  spec.license       = 'MIT'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'mqtt', '~> 0.5.0'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 13.0'
end
