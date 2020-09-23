lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'scc/codestyle/version'

Gem::Specification.new do |spec|
  spec.name     = 'scc-codestyle'
  spec.version  = Scc::Codestyle::VERSION
  spec.licenses = ['MIT']
  spec.authors  = ['SCC Team']
  spec.email    = ['scc@suse.com']

  spec.required_ruby_version = '>= 2.5.0'

  spec.summary  = 'SCC style guides and shared style configs.'
  spec.homepage = 'https://github.com/SUSE/scc-codestyle'

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ['lib']

  spec.add_dependency 'rubocop', '0.86.0'
  spec.add_dependency 'rubocop-performance', '1.6.1'
  spec.add_dependency 'rubocop-rails', '2.7.1'
  spec.add_dependency 'rubocop-rspec', '1.41.0'
  spec.add_dependency 'rubocop-thread_safety', '~> 0.4.1'
  spec.add_development_dependency 'bundler', '~> 1.17.3'
  spec.add_development_dependency 'rake', '~> 12.3'
end
