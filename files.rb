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


