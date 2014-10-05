n = gets.chomp.to_i

while n > 0
# or: until n == 0
  puts "#{n} ..."
  n -= 1
end

puts 'Finish'