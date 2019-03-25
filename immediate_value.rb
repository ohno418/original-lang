require './expression'

class ImmediateValue < Expression
  attr_accessor :value

  def initialize(value)
    unless value.is_a?(String) || value.is_a?(Integer)
      raise ArgumentError
    end
    self.value = value
  end

  def eval
    value
  end
end
