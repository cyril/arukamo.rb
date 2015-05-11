# Extend Ruby's BasicObject class.
class BasicObject
  # @example Does it exist?
  #   o = BasicObject.new
  #   o.aru? # => false
  #
  # @return [Boolean] `true` if exist.
  def aru?
    false
  end

  # @example Does not exist?
  #   o = BasicObject.new
  #   o.nai? # => true
  #
  # @return [Boolean] `false` unless exist.
  def nai?
    !aru?
  end
end
