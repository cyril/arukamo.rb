require_relative File.join 'support', 'coverage'
require_relative File.join '..', 'lib', 'arukamo'

subject = 'foo'

fail unless subject.aru? === true
fail unless subject.nai? === false

subject = ''

fail unless subject.aru? === false
fail unless subject.nai? === true
