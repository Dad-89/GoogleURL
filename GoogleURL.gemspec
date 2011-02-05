# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{GoogleURL}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Antonio Barra"]
  s.date = %q{2011-02-05}
  s.description = %q{GoogleURL is a library that allows the creation of shortlink using the service's goo.gl.}
  s.email = %q{antonio.barra [at] ymail.com}
  s.extra_rdoc_files = ["README.rdoc", "lib/GoogleURL.rb"]
  s.files = ["Manifest", "README.rdoc", "Rakefile", "VERSION", "lib/GoogleURL.rb", "test/example.rb", "GoogleURL.gemspec"]
  s.homepage = %q{http://github.com/Dad-89/GoogleURL}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "GoogleURL", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{googleurl}
  s.rubygems_version = %q{1.4.2}
  s.summary = %q{GoogleURL is a library that allows the creation of shortlink using the service's goo.gl.}
  s.test_files = ["test/example.rb"]

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
