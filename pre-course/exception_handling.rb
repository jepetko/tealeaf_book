names = ['bob', 'mary', nil, 'lara']
names.each do |el|
  begin
    puts "#{el}, our name has #{el.length} characters."
  rescue Exception => ex
    puts ex.message
  end
end

# short version of rescue
names.each {|n| puts n.length} rescue puts 'error occurred, sorry'