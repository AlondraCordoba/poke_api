# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path("../lib", __dir__)
require "poke_api"

require "minitest/autorun"

require "vcr"

VCR.configure do |config|
  config.cassette_library_dir = "test/cassettesTests"
  config.hook_into :webmock
end
