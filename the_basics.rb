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



# invoke methods
MORE_THAN_5_THOUSANDS = 5344
get_my_name 'Katarina', 'Golbang'
how_many_thousands MORE_THAN_5_THOUSANDS
how_many_hundreds MORE_THAN_5_THOUSANDS
how_many_tens MORE_THAN_5_THOUSANDS
how_many_ones MORE_THAN_5_THOUSANDS