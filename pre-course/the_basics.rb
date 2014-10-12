def get_my_name(first, sec)
  name = first + ' ' + sec
  puts name
  name
end

def how_many_thousands(number)
  ret = (number / 1000).to_i
  puts ret
end

def how_many_hundreds(number)
  ret = number % 1000 / 100
  puts ret
end

def how_many_tens(number)
  ret = number % 1000 % 100 / 10
  puts ret
end

def how_many_ones(number)
  ret = number % 1000 % 100 % 10
  puts ret
end

def movie_titles
  {apocalypse_redux: 1993, blade_runner: 1981, alien: 1978, avatar: 2011}.each_value {|val| puts val}
end

def years
  [1993, 1981, 1978, 2011].each {|val| puts val}
end

def factorial(num)
  return 1 if num <= 1
  num * factorial(num-1)
end

def multiple_factorials(numbers)
  numbers.each {|num| puts factorial num}
end

def compute_squares(numbers)
  numbers.each {|num| puts num*num}
end

# invoke methods
MORE_THAN_5_THOUSANDS = 5344
get_my_name 'Katarina', 'Golbang'
how_many_thousands MORE_THAN_5_THOUSANDS
how_many_hundreds MORE_THAN_5_THOUSANDS
how_many_tens MORE_THAN_5_THOUSANDS
how_many_ones MORE_THAN_5_THOUSANDS
movie_titles
years
multiple_factorials [5,6,7,8]
compute_squares [1.1, 2.3, 5.1, 3.0]