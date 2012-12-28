# encoding: utf-8
Gem::Specification.new do |s|
  s.name = "jquery-behave"
  File.open("VERSION", "rb") do |f|
    s.version = f.read
  end
  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.author = "Brice Texier"
  s.email  = "burisu@oneiros.fr"
  s.summary = "jQuery add-on to support load event after partial HTML update after AJAX request"
  s.extra_rdoc_files = ["LICENSE", "README.rdoc" ]
  s.test_files = `git ls-files test`.split("\n") 
  exclusions = [ "#{s.name}.gemspec", ".travis.yml", ".gitignore", "Gemfile", "Gemfile.lock", "Rakefile"]
  s.files = `git ls-files`.split("\n").delete_if{|f| exclusions.include?(f)}
  s.homepage = "http://github.com/burisu/formize"
  s.license = "MIT"
  s.require_path = "lib"

  add_runtime_dependency = (s.respond_to?(:add_runtime_dependency) ? :add_runtime_dependency : :add_dependency)
  s.send(add_runtime_dependency, "rails", [">= 3.1"])
  s.send(add_runtime_dependency, "jquery-rails", [">= 0"])
end

