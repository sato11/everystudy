# frozen_string_literal: true

class Fixnum
  def fizzbuzz
    if (self % 15).zero?
      'fizzbuzz'
    elsif (self % 5).zero?
      'buzz'
    elsif (self % 3).zero?
      'fizz'
    else
      self
    end
  end
end

def fizzbuzz(num)
  (1..num).map(&:fizzbuzz)
end

puts 'Enter a number up to which you wanna fizzbuzz.'
num = gets.chomp.to_i
puts fizzbuzz(num)
