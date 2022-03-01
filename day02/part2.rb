require_relative './position'
require_relative './instruction'

# file_path = './sample.txt'
file_path = './input.txt'

instructions = File.readlines(file_path, chomp: true)
                   .select { |line| !line.start_with?('#') }
                   .map { |line| line.split(' ') }
                   .map { |inst| Instruction.new(command: inst[0].to_s.downcase.to_sym, amount: inst[1].to_i) }

position = Position.new(aim: 0, depth: 0, horizon: 0)
positions = instructions.each_with_object([position]) do |inst, acc|
  acc << inst.update_position(acc.last)
end

puts positions
final_position = positions.last
puts "result = #{final_position.depth * final_position.horizon}"
