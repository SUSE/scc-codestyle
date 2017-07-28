# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'scc/codestyle/version'

Gem::Specification.new do |spec|
  spec.name     = 'scc-codestyle'
  spec.version  = Scc::Codestyle::VERSION
  spec.licenses = ['MIT']
  spec.authors  = ['SCC Team']
  spec.email    = ['scc@suse.com']

  spec.summary  = 'SCC style guides and shared style configs.'
  spec.homepage = 'https://github.com/SUSE/scc-codestyle'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.require_paths = ['lib']

  spec.add_dependency 'rubocop', '~> 0.49', '>= 0.49.0'
  spec.add_dependency 'rubocop-rspec', '~> 1.15', '>= 0.15.0'
  spec.add_development_dependency 'bundler', '~> 1.15'
  spec.add_development_dependency 'rake', '~> 10.0'
end
