require_relative './expression'

class CallOperator < Expression
  attr_accessor :operator, :args

  def initialize(operator, args)
    self.operator = operator
    self.args = args
  end

  def eval
    operator.call(args)
  end
end
