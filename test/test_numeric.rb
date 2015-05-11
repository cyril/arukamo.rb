require_relative File.join 'support', 'coverage'
require_relative File.join '..', 'lib', 'arukamo'

subject = 42

fail unless subject.aru? === true
fail unless subject.nai? === false

subject = 0

fail unless subject.aru? === false
fail unless subject.nai? === true
