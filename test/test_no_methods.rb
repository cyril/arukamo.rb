require_relative File.join 'support', 'coverage'
require_relative File.join '..', 'lib', 'arukamo'

class NoMethods
end

subject = NoMethods.new

fail unless subject.aru? === false
fail unless subject.nai? === true

class NoMethods
  def foo
  end
end

subject = NoMethods.new

fail unless subject.aru? === true
fail unless subject.nai? === false
