# -*- encoding: utf-8 -*-
# stub: multi_json 1.14.0 ruby lib

Gem::Specification.new do |s|
  s.name = "multi_json".freeze
  s.version = "1.14.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.5".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Michael Bleigh".freeze, "Josh Kalderimis".freeze, "Erik Michaels-Ober".freeze, "Pavel Pravosud".freeze]
  s.date = "2019-10-14"
  s.description = "A common interface to multiple JSON libraries, including Oj, Yajl, the JSON gem (with C-extensions), the pure-Ruby JSON gem, NSJSONSerialization, gson.rb, JrJackson, and OkJson.".freeze
  s.email = ["michael@intridea.com".freeze, "josh.kalderimis@gmail.com".freeze, "sferik@gmail.com".freeze, "pavel@pravosud.com".freeze]
  s.homepage = "http://github.com/intridea/multi_json".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.0.6".freeze
  s.summary = "A common interface to multiple JSON libraries.".freeze

  s.installed_by_version = "3.0.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.5"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.9"])
    else
      s.add_dependency(%q<rake>.freeze, ["~> 10.5"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.9"])
    end
  else
    s.add_dependency(%q<rake>.freeze, ["~> 10.5"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.9"])
  end
end
