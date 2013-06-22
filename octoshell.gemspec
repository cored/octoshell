# Ensure we require the local version and not one we might have installed already
require File.join([File.dirname(__FILE__),'lib','octoshell','version.rb'])
spec = Gem::Specification.new do |s| 
  s.name = 'octoshell'
  s.version = Octoshell::VERSION
  s.author = 'Rafael George'
  s.email = 'george@gmail.com'
  s.homepage = 'http://github.com/cored/octoshell'
  s.platform = Gem::Platform::RUBY
  s.summary = 'Command line interface for Octokit'
# Add your other files here if you make them
  s.files = %w(
bin/octoshell
lib/octoshell/version.rb
lib/octoshell.rb
  )
  s.require_paths << 'lib'
  s.has_rdoc = true
  s.extra_rdoc_files = ['README.rdoc','octoshell.rdoc']
  s.rdoc_options << '--title' << 'octoshell' << '--main' << 'README.rdoc' << '-ri'
  s.bindir = 'bin'
  s.executables << 'octoshell'
  s.add_runtime_dependency('octokit', '~> 1.0')

  s.add_development_dependency('rake')
  s.add_development_dependency('rdoc')
  s.add_development_dependency('aruba')
  s.add_runtime_dependency('gli','2.5.6')
end
