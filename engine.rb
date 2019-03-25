require './expressions/immediate_value'
require './expressions/call_operator'
require './operators/add_operator'

class Engine
  attr_accessor :operators

  def initialize
    self.operators = {
      '+' => AddOperator.new
    }
  end

  def eval(script)
    unless script.is_a?(Array)
      raise ArgumentError
    end
    get_expression(script).eval
  end

  private

  def get_expression(script)
    if script.is_a?(Array)
      CallOperator.new(
        operators[script[0]],
        script[1..-1].map { |s| get_expression(s) }
      )
    else
      ImmediateValue.new(script)
    end
  end
end
