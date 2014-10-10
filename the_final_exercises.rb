#Exercise 1
#Use the each method of Array to iterate over [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], and print out each value.

[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each {|el| puts el}

#Exercise 2
#Same as above, but only print out values greater than 5.
[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each {|el| puts el if el > 5}

#Exercise 3
new_arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].select {|el| el.odd?}
p new_arr

#Exercise 4
arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
arr.push 11
arr.unshift 0
p arr

#Exercise 5
#arr.delete_at arr.size-1
arr.pop
arr << 3
p arr

#Exercise 6
arr.uniq
p arr

#Exercise 9
h = {a:1, b:2, c:3, d:4}
puts h[:b]
h[:e] = 5
h.delete_if {|key,val| val < 3.5}
puts h

#Exercise 10
hash_with_arrays = {a: [1,2,3], b: [2,4,5]}
array_with_hashes = [ {a:1}, {b:2}]
p hash_with_arrays
p array_with_hashes

#Exercise 12
contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
                ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}
contacts.each do |key,val|
  pattern = Regexp.new(key.split(' ').first.strip, Regexp::IGNORECASE)
  contact_data.each do |el|
    if el.first.match pattern
      contacts[key] = el
      break
    end
  end
end
p contacts


#Exercise 13
contacts['Joe Smith'][0]
contacts['Sally Johnson'][2]

#Exercise 14
joe_smith_email = contacts.shift.first
p joe_smith_email

#Exercise 15
arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if do |el|
  el.start_with? 's'
end
p arr

arr = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
arr.delete_if do |el|
  el.start_with?('s') || el.start_with?('w')
end
p arr

#Exercise 16
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
result = a.map do |el|
  el.split(' ')
end
a = result.flatten
p a

#Exercise 17
hash1 = {shoes: "nike", "hat" => "adidas", :hoodie => true}
hash2 = {"hat" => "adidas", :shoes => "nike", hoodie: true}

if hash1 == hash2
  puts "These hashes are the same!"
else
  puts "These hashes are not the same!"
end