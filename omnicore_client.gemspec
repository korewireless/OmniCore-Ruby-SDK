# -*- encoding: utf-8 -*-

=begin
#OmniCore Model and State Management API

#This is an OmniCore Model and State Management server.

The version of the OpenAPI document: 1.8.1
Contact: omnicoresupport@korewireless.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.4.0-SNAPSHOT

=end

$:.push File.expand_path("../lib", __FILE__)
require "omnicore_client/version"

Gem::Specification.new do |s|
  s.name        = "omnicore_client"
  s.version     = OmniCoreClient::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["korewireless"]
  s.email       = ["omnicoresupport@korewireless.com"]
  s.homepage    = "https://openapi-generator.tech"
  s.summary     = "OmniCore Model and State Management API Ruby Gem"
  s.description = "This is an OmniCore Model and State Management server."
  s.license     = "Unlicense"
  s.required_ruby_version = ">= 2.7"

  s.add_runtime_dependency 'typhoeus', '~> 1.0', '>= 1.0.1'

  s.add_development_dependency 'rspec', '~> 3.6', '>= 3.6.0'

  s.files         = `find *`.split("\n").uniq.sort.select { |f| !f.empty? }
  s.test_files    = `find spec/*`.split("\n")
  s.executables   = []
  s.require_paths = ["lib"]
end
