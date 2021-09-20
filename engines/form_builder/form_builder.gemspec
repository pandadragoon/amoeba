require_relative 'lib/form_builder/version'

Gem::Specification.new do |spec|
  spec.name        = 'form_builder'
  spec.version     = FormBuilder::VERSION
  spec.authors     = ['Joshua Edwards']
  spec.email       = ['josh.dean.edwards@gmail.com']
  # spec.homepage    = "TBD"
  spec.summary     = 'Engine for building forms'
  spec.description = 'Engine for building forms'
  spec.license     = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

  # spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.add_dependency 'annotate', '~> 3.1', '>= 3.1.1'
  spec.add_dependency 'dry-monads', '~> 1.4'
  spec.add_dependency 'dry-rails', '~> 0.3.0'
  spec.add_dependency 'dry-struct', '~> 1.4'
  spec.add_dependency 'rails', '~> 6.1.4', '>= 6.1.4.1'
end
