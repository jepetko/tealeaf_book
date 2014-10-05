i = 0

while i < 10
  if i == 3
    i+=1
    next
  elsif i.odd?
    puts i
  end
  i+=1
end