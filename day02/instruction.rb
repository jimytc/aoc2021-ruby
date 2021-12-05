class Instruction
  attr_reader :command, :amount

  def initialize(command:, amount:)
    @command = command
    @amount = amount
  end

  def update_position(position)
    Position.new(
      aim: new_aim(position),
      depth: new_depth(position),
      horizon: new_horizon(position)
    )
  end

  private

  def new_aim(position)
    case command
    when :up
      position.aim - amount
    when :down
      position.aim + amount
    else
      position.aim
    end
  end

  def new_depth(position)
    if command == :forward
      position.depth + position.aim * amount
    else
      position.depth
    end
  end

  def new_horizon(position)
    if command == :forward
      position.horizon + amount
    else
      position.horizon
    end
  end
end