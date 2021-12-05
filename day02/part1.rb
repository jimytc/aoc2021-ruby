# require_relative './position'
# require_relative './instruction'
#
# instructions = File.readlines('./input.txt', chomp: true)
#                    .select { |line| !line.start_with?('#') }
#                    .map { |line| line.split(' ') }
#                    .map { |inst| Instruction.new(command: inst[0].to_s.downcase.to_sym, amount: inst[1].to_i) }
#
# position = Position.new(depth: 0, horizon: 0, aim: 0)
# positions = instructions.reduce([position]) do |acc, inst|
#   last_position = acc.last
#   acc << last_position.move_by(inst)
#   acc
# end
#
# final_position = positions.last
# puts final_position
# puts "result = #{final_position.depth * final_position.horizon}"
