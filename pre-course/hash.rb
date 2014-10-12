h = {a: 1, b: 2, c: 3}
h2 = {d: 4}
h.merge! h2
p h

# iterating over hashes
h.each do |key, val|
  puts "#{key}: #{val}"
end

# hashes as arguments
def greeting(name, options={})
  if options.empty?
    puts "Hello, I am #{name}"
  else
    if options.include?(:age)
      puts "My name is #{name} and I am #{options[:age]} years old. *ggg*"
    end
  end
end

greeting 'Kati', {age: 20}

# other types used as keys; => is necessary
my_map = { 'hello' => 'Susi', age: 30, [1] => 'greedy'}
p my_map

p my_map.has_key? :hello # false
p my_map.has_key? 'hello'

p my_map.select {|k,v| k.is_a? Array}
p my_map[:age]

p my_map.fetch('Grizzly', 'I\'m not a Grizzly but I\'m a bear')
p my_map.to_a
p my_map.keys
p my_map.values
