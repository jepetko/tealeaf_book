# Exercise 1
words = ["laboratory", "experiment", "Pans Labyrinth", "elaborate", "polar bear"]
words.each do |el|
  p el if el =~ /lab/i
end


# Exercise 2
def execute(&block)
  block
end

p execute { puts 'something'}

# Exercise 3
# catch up unexpected events and handle them

# Exercise 4
def execute2(&block)
  block.call
end

p execute2 { puts 'somethings will be printed' }

# Exercise 5
def execute3(block)
  block.call
end
begin
  p execute3 { puts 'something is wrong'}
rescue Exception => e
  puts e.message
end

# more exercises on my own
def auto_handling_for_blocks(param)
  puts param
  yield if block_given?
end

param = 'Hello there'
auto_handling_for_blocks param do
  puts "#{param}"
end