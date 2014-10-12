#Exercise 1
arr = [1, 3, 5, 7, 9, 11]
number = 3
p arr.include? number

#Exercise 2
arr = ["b", "a"]

#result is [ [b,1], [b, 2], [b,3], [a,1], [a,2], [a, 3] ]
arr = arr.product(Array(1..3))
p arr

# 1
p arr.first.delete(arr.first.last)

## correct!!

#Exercise 3
arr = [["test", "hello", "world"],["example", "mem"]]
p arr[1][0]
#or:
p arr.last.first

#Exercise 4
arr2 = [15, 7, 18, 5, 12, 8, 5, 1]
p arr2.index(5)    #3
p arr2.index('hello')   #nil because not contained
p arr2[3]          #5

#Exercise 5
string = "Welcome to Tealeaf Academy!"
a = string[6]
puts a          #e
b = string[11]
puts b          #T
c = string[19]  #A
puts c

#Exercise 6
strings = ['a', 'b', 'c']
begin
  strings['x'] = 10
rescue Exception => e
  p e
end

#Exercise 7
values = [2,3,6,4,7,8,9,5]
result = values.map {|val| val+2}
p values
p result
