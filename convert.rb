#!/usr/bin/env ruby

require 'json'
require 'yaml'

puts JSON.pretty_generate(YAML.load(ARGF.read).to_h)
