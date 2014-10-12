def traverse(arr, &block)
  arr.each do |e|
    block.call e
  end
end

traverse [1,2,3,4,5] do |e|
  puts "** #{e} **"
end

proc = Proc.new do |name|
  puts "Can I play with you, #{name}?"
end

def traverse2(arr, proc)
  arr.each do |e|
    proc.call e
  end
end
traverse2 %w{Denise Mary Angie}, proc