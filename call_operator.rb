require './expression'
require './operator'

class CallOperator < Expression
  attr_accessor :operator, :args

  def initialize(operator, args)
    unless operator.is_a?(Operator) && args.is_a?(Array)
      raise ArgumentError
    end
    self.operator = operator
    self.args = args
  end

  def eval
    operator.call(args)
  end
end
