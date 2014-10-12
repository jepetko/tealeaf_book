a = 'hello'
b = 'there'
b = a
a = 'hello the next time'
p "a: #{a}"
p "b: #{b}"
p '----------------------'
c = 'I will'
d = 'hit you'
d = c
c << ' hit you too'
p "c: #{c}"
p "d: #{d}"


# uniq vs. uniq!

arr = [1,2,3,3,3,4,5]
arr_clone = arr.uniq
p "orig: #{arr}"
p "clone: #{arr_clone}"
arr_clone = arr.uniq!
p "orig: #{arr}"
p "clone: #{arr_clone}"

# map vs. map!
arr2 = ['A', 'B', 'B', 'C']
arr2_clone = arr2.map {|el| el + '*'}
p arr2
p arr2_clone
arr2_clone = arr2.map! {|el| el + '*'}
p arr2
p arr2_clone