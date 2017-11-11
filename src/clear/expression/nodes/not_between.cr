###
#
class Clear::Expression::Node::NotBetween < Clear::Expression::Node
  alias BetweenType = Int32 | Int64 | Float32 | Float64 | String | Time | Node

  def initialize(@target : Node, @starts : BetweenType, @ends : BetweenType)
  end

  def resolve
    "(#{@target.resolve} NOT BETWEEN #{Clear::Expression.safe_literal(@starts)} AND #{Clear::Expression.safe_literal(@ends)})"
  end
end