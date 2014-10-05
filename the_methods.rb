# Exercise 1
def greeting(name)
  puts "hello #{name}"
end

greeting 'Emma'

# Exercise 2
x = 2
puts x = 2
p name = "Joe"
four = "four"
print something = "nothing"

## Note the difference between puts and p:
## puts: prints without "inspect" AND return value is nil
## p: prints with "inspect" (better for debugging) AND returns the value

def multiply(a, b)
  a * b
end

puts multiply 3, 4

def scream(words)
  words = words + "!!!!"
  puts words   # nil is still returned because puts is the last expression evaluated!
end
scream("Yippeee")

