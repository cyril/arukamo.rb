require_relative File.join 'support', 'coverage'
require_relative File.join '..', 'lib', 'arukamo'

class Null
  def blank?
    true
  end
end

subject = Null.new

fail unless subject.aru? === false
fail unless subject.nai? === true
