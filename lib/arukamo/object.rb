# Extend Ruby's BasicObject class.
class Object
  # @example Does it exist?
  #   o = 42
  #   o.aru? # => true
  #
  # @return [Boolean] `true` if exist.
  def aru?
    results = [nil?, equal?(false), public_methods(false).empty?]

    results << blank? if respond_to?(:blank?)
    results << empty? if respond_to?(:empty?)
    results << zero?  if respond_to?(:zero?)

    !results.any?
  end
end
