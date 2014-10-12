arr = ['Ridley Scott', 'Wolfgang Petersen', 'Steven Spielberg', 'Ridley Scott', 'James Cameron']
arr << 'Stanley Kubrick'

puts arr.first
puts arr.last

p arr.map {|el| "*#{el}*"}
p arr

puts arr.delete_at(1)
p arr
p arr.delete('not found')

p arr.uniq
p "#{arr.uniq.length} <> #{arr.length}"
p arr.uniq!
p "#{arr.uniq.length} == #{arr.length}"

numbers = [1, 2, 11,4, 7, 3, 2, 6, 0, 8, 5]
p numbers.select {|n| n > 5}

def mutate(arr)
  arr.pop
end

def non_mutate(arr)
  arr.select {|el| el > 4}
end

p mutate(numbers)
p "after mutate: #{numbers}"
p non_mutate(numbers)
p "after non_mutate: #{numbers}"


numbers2 = [1,2,3,4]
numbers3 = [2,3,4,5]
p numbers3.pop
p numbers3.unshift 1
p numbers2 == numbers3   #true
p numbers2.include? 0

hierarchy = [[1,2,3], 6,7,8, [4,5]]
p hierarchy.flatten #there is also flatten!

arr.each {|producer| puts "My favourite: #{producer}"}
arr.each_with_index {|producer, idx| puts "My favourite (#{idx}): #{producer}"}

p hierarchy.flatten!.sort!
p hierarchy

x = [1,2]
y = [3,4]
p x.product y

enumerator = x.each
p enumerator.methods

# difference each VS. map
years = [2010, 2011, 2014, 2013]
p years.each {|y| puts y+3}   #returns the original array
p years.map {|y| puts y+3}    #returns [nil, nil, nil] because of puts...
p years.map {|y| res = y+3; puts res; res}    #returns the new array






