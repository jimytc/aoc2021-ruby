depths = File.readlines('./part1.txt', chomp: true).map(&:to_i)

windowed_sum = depths.each_cons(3).map(&:sum)

result = windowed_sum.each_cons(2).count { |first, second| second > first }

puts "Increased amount: #{result}"
