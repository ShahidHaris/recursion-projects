puts 'fibonacci declared'

def fibs(number)
  return [0] if number.zero?
  return [0, 1] if number == 1

  result = [0, 1]
  (2...number).each { |_| result << result[-1] + result[-2] }

  result
end

def fib_rec(num)
  sequence = [0, 1]
  (2...num).each do |i|
    sequence << sequence[i - 1] + sequence[i - 2]
  end
  sequence
end



number = 8
fibonacci_sequence = fibs(number)
puts "The Fibonacci sequence of #{number} is #{fibonacci_sequence}"
puts "The Fibonacci recursive sequence of #{number} is #{fib_rec(number)}"
