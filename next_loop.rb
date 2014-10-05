i = 0
loop do
  i += 2
  if i == 4
    next
  end
  puts "number #{i}"
  if i == 10
    break;
  end
end
