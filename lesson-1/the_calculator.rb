class String
  def is_numeric?
    begin
      Float(self)
    rescue
      false
    end
  end
end

class Calculator

  def calculate(op, numbers = [])
    return nil if numbers.length == 0
    return numbers.first if numbers.length == 1
    result = numbers.shift
    numbers.each {|n| result = result.send op.to_sym, n}
    result
  end

  def say(str)
    puts "------------ #{str} ------------"
  end

  def grab_number
    number = gets.chomp
    return number.to_f if number.is_numeric?
    self.say "Your input is invalid: #{number}. Please, give me a valid number."
    grab_number
  end

  def grab_operation
    op = gets.chomp.to_sym
    return op if [:+, :-, :*, :/].include? op
    self.say "Operation unknown: #{op}. Please, give me a valid operation: +, -, * or /."
    grab_operation
  end

  def start
    self.say 'Welcome to Calculator 0.0.1'
    self.say 'First number:'
    first = grab_number
    self.say 'Second number:'
    second = grab_number
    self.say 'Provide the operation you want to perform:'
    op = grab_operation
    result = self.calculate op, [first, second]
    self.say "Well done! The result is: #{result}."
  end

end

Calculator.new.start