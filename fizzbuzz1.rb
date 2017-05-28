# frozen_string_literal: true

def fizzbuzz(num, fb = [])
  (1..num).each do |n|
    fb << if (n % 15).zero?
            'fizzbuzz'
          elsif (n % 5).zero?
            'buzz'
          elsif (n % 3).zero?
            'fizz'
          else
            n
          end
  end
  fb
end

puts 'Enter a number up to which you wanna fizzbuzz.'
num = gets.chomp.to_i
puts fizzbuzz(num)
