require_relative File.join 'support', 'coverage'
require_relative File.join '..', 'lib', 'arukamo'

subject = BasicObject.new

fail unless subject.aru? === false
fail unless subject.nai? === true
