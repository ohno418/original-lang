require './operator'

class AddOperator < Operator
  def call(args)
    args.map(&:eval).sum
  end
end
