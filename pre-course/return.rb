def add_three(number)
  return number + 3
  puts 'not executed'
  number + 4
end

number = 4
returned_value = add_three number
puts returned_value
puts number

add_three(5).times { puts 'should print 8 times'}