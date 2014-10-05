#loop do
#  puts 'endless loop'
#end

i = 0
loop do
  i += 1
  break if i > 10
end

puts i