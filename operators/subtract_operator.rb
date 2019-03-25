require_relative './operator'

class SubtractOperator < Operator
  def call(args)
    args.map(&:eval).inject { |i, j| i - j }
  end
end
