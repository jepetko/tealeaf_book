age = gets.chomp
[10,20,30,40].each {|delta| puts "In #{delta} years you will be #{age.to_i+delta} years old."}