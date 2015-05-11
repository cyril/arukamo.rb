require_relative File.join 'support', 'coverage'
require_relative File.join '..', 'lib', 'arukamo'

class Composite
  def blank?
    true
  end

  def empty?
    false
  end

  def equal?(*)
    false
  end

  def nil?
    false
  end

  def zero?
    false
  end
end

subject = Composite.new

fail unless subject.aru? === false
fail unless subject.nai? === true
