require 'minitest/autorun'
require 'minitest/reporters'
require 'shoulda/context'
require 'json_processor'
require 'json'

Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new # spec-like progress