class Position
  attr_reader :depth, :horizon, :aim

  def initialize(aim:, depth:, horizon:)
    @aim = aim
    @depth = depth
    @horizon = horizon
  end

  def move_to(position)
    position.dup
  end

  def ==(other)
    depth == other.depth && horizon == other.horizon
  end

  def to_s
    "(aim: #{aim}, depth: #{depth}, horizon: #{horizon})"
  end
end
