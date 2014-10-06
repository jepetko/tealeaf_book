# Exercise 1
family = {  uncles: ["bob", "joe", "steve"],
            sisters: ["jane", "jill", "beth"],
            brothers: ["frank","rob","david"],
            aunts: ["mary","sally","susan"]
}

my_family = family.select {|key, value| key == :sisters || key == :brothers}
p my_family
my_family = my_family.values.flatten
p my_family

# Exercise 2
arr_1 = {a: 1, b: 2}
arr_2 = {c: 3}
p "non destructive: #{arr_1.merge arr_2} VS. #{arr_1}"
p "destructive: #{arr_1.merge! arr_2} VS. #{arr_1}"

# Exercise 3
arr_1.keys.each {|key| puts key}
arr_1.values.each {|value| puts value}
arr_1.each {|key, value| puts "#{key}: #{value}"}

# Exercise 4
person = {name: 'Bob', occupation: 'web developer', hobbies: 'painting'}
p person[:name]
p person.fetch(:name)

# Exercise 5
p person.include? :occupation
p person.has_value? 'painting'

# Exercise 6
words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
result = []
words.each do |val|
  sorted_val = val.split('').sort.join ''

  sub_result = []
  words.each do |val2|
    sorted_val2 = val2.split('').sort.join ''
    sub_result << val2 if sorted_val == sorted_val2
  end
  result << sub_result.uniq unless result.include? sub_result
end
p result

### BETTER: non cartesian product (double loop)
result_2 = {}
words.each do |word|
  key = word.split('').sort.join
  if result_2.has_key?(key)
    result_2[key].push(word)
  else
    result_2[key] = [word]
  end
end

result_2.each do |k, v|
  puts "------"
  p v
end

# Exercise 7
x = "hi there"
my_hash = {x: "some value"}     #:x is a symbol
my_hash2 = {x => "some value"}  #x is a string

# Exercise 8
# B. of course


