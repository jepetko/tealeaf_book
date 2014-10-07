file = File.new 'myFile.txt', 'a+'
file << 'hello'
file.close

content = File.read 'myFile.txt'
p content
puts content

content_arr = File.readlines 'myFile.txt'
p content_arr

File.open('myFile.txt', 'w+') do |file|
  file.puts 'hello'
  file.puts 'hello'
  file << 'greeting'
end
puts File.read 'myFile.txt'

File.readlines('myFile.txt').each_with_index do |line,idx|
  puts "#{idx}: #{line}"
end

File.delete 'myFile.txt'

# Exercise 1 (transform)
file_a = File.new 'file_a.txt', 'w+'
file_a.puts 'abc'
file_a.close

content = File.read('file_a.txt')

File.open('file_b.txt', 'a+') do |f|
  puts content
  f.puts content
end
puts File.open('file_b.txt', 'r').read

# Extensions
puts File.extname 'file_b.txt'
require 'pathname' # require it
puts Pathname.new(File.new 'age.rb').extname

# Exercise 2
dir = Dir.new '.'
while f = dir.read do
  puts f +  ' ' + Pathname.new(f).extname
end

dir = Pathname.new '.'
dir.entries.each do |f|
  puts f
end





