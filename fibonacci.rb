
# generate the fibonacci number for the passed num
# 0 1 1 2 3 5 8
def fibonacci(number)
  if number < 2
    puts "if: #{number}"   #sum comes from here... 8 x 1
    number
  else
    puts "else: #{number} ==> #{number-1} + #{number-2}"
    fibonacci(number - 1) + fibonacci(number - 2)
  end
end

puts fibonacci(6)
