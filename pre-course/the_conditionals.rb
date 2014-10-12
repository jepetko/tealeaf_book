# Exercise 1; 100% success
puts (32 * 4) >= 129
puts false != !true
puts true == 4
puts false == (847 == '874')
puts (!true || (!(100 / 5) == 20) || ((328 / 4) == 82)) || false

# Exercise 2
def all_caps(str)
  str.upcase if str.length > 20
end

puts all_caps 'heeeeeeeeeelloooooooooooooooooooooooooo'

# Exercise 3
def which_number(n)
  if n >= 0 && n < 50
    puts 'n is between 0 and 50'
  elsif n >= 50 && n < 100
    puts 'n is between 50 and 100'
  else
    puts 'n is greater than 100'
  end
end

which_number 80

# Exercise 4: 100% success

# Exercise 5:
def which_number_1(n)
  case n
    when n < 0
      puts 'not allowed'
    when n <= 50
      puts 'n is between 0 and 50'
    when n <= 100
      puts 'n is between 50 and 100'
    else
      puts 'n is greater than 100'
  end
end

which_number_1 101