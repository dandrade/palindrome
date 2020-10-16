$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "dandrade_palindrome"

require "minitest/autorun"
# add
require "minitest/reporters"
Minitest::Reporters.use!
