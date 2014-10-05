# Exercise 1. Last evaluated expression is x.
x = [1, 2, 3, 4, 5]
x.each do |a|
  a + 1
end

# Exercise 2

loop do
  input = gets.chomp
  if input == 'STOP'
    puts 'now.. have a break'
    break;
  end
  puts "your input was: #{input}"
end

# Exercise 3

x.each_with_index {|val, idx| puts "#{idx}: #{val}"}

# Exercise 4

def recursive_countdown(num)
  return if(num == 0)
  puts "#{num} ..."
  recursive_countdown num-1
end

recursive_countdown 5