depths = File.readlines('./part1.txt', chomp: true).map(&:to_i)
result = depths.each_cons(2).count { |first, second| second > first }
puts "Increased_count: #{result}"
