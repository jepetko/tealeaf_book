class PaperRockScissors

  module GameLogic
    TYPES = [:P, :R, :S]
    COMBINATIONS = { [:P, :R] => 'Paper wraps Rock', [:S, :P] => 'Scissors destroys Paper', [:R, :S] => 'Rocks damages Scissors' }

    def score(human_choice, pc_choice, &message_block)
      human_choice = human_choice.to_sym if not human_choice.is_a? Symbol
      pc_choice = pc_choice.to_sym if not pc_choice.is_a? Symbol
      return 0 if human_choice == pc_choice

      msg = COMBINATIONS[ [human_choice, pc_choice] ]
      success = !msg.nil?
      if !success
        msg = COMBINATIONS[ [pc_choice, human_choice] ]
      end
      message_block.call msg
      success
    end
  end
  include GameLogic

  private
  def initialize
  end

  def self.say(str)
    puts str
  end

  def self.valid?(type)
    return false if type.nil?
    TYPES.include? type.to_sym
  end

  public
  def self.pick
    loop do
      choice = gets.chomp.upcase
      return choice if valid?(choice)
    end
  end

  def self.start
    say 'Play Paper, Rock, Scissors !!!'
    say "choose one (#{TYPES.split.join '/'})"
    choice = pick
    puts choice
  end
end