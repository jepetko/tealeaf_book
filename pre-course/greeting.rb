def greeting(name)
  puts 'hello ' + name
end

greeting 'Lara'
#greeting 0

def decorate_greeting(name)
  name = name.split('').join '-'
  greeting name
end

decorate_greeting 'Lara'
decorate_greeting 0
