$:.unshift File.join(File.dirname(__FILE__), '../', '../', 'lib')
require 'corrency'

require 'test/unit/assertions'

World(Test::Unit::Assertions)
